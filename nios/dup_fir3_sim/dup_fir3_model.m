% ================================================================================
% Legal Notice: Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
% Any megafunction design, and related net list (encrypted or decrypted),
% support information, device programming or simulation file, and any other
% associated documentation or information provided by Altera or a partner
% under Altera's Megafunction Partnership Program may be used only to
% program PLD devices (but not masked PLD devices) from Altera.  Any other
% use of such megafunction design, net list, support information, device
% programming or simulation file, or any other related documentation or
% information is prohibited for any other purpose, including, but not
% limited to modification, reverse engineering, de-compiling, or use with
% any other silicon devices, unless such use is explicitly licensed under
% a separate agreement with Altera or a megafunction partner.  Title to
% the intellectual property, including patents, copyrights, trademarks,
% trade secrets, or maskworks, embodied in any such megafunction design,
% net list, support information, device programming or simulation file, or
% any other related documentation or information provided by Altera or a
% megafunction partner, remains with Altera, the megafunction partner, or
% their respective licensors.  No other licenses, including any licenses
% needed under any third party's intellectual property, are provided herein.
% ================================================================================
% Generated on: 03/26/2016 12:33:31
% Generated by: FIR Compiler II 15.1
%---------------------------------------------------------------------------------------------------------
%
%	THIS IS A WIZARD GENERATED FILE. DO NOT EDIT THIS FILE!
%
%---------------------------------------------------------------------------------------------------------

clear;

sx = 1;
num_ch = 1;
poly_type = 'interpolation';
int_fact = 25;
dec_fact = 1;
bankcount = 1;
reconfigurable = false;
mode_mapping = [0];
for j = 1:sx
    %
    %open and read data from file
    %
    file_name = ['dup_fir3_input.txt'];
    infile = fopen (file_name, 'r');



    % read in data from the file
    if (bankcount >1)
      if (reconfigurable) 
	      input = fscanf(infile, '%d %d %d',[3 inf])';
	      bank = input(:,2);
	      mode = input(:,3);
      else 
	      input = fscanf(infile, '%d %d',[2 inf])';
	      bank = input(:,2);
	      for i = 1 : size(input) 
	      	mode(i) = mod(i-1,num_ch);
	      end
      end 
    else 
      if (reconfigurable) 
	      input = fscanf(infile, '%d %d',[2 inf])';
	      bank = zeros(size(input));
	      mode = input(:,2);
      else 
	      input = fscanf(infile, '%d %d',[1 inf])';
	      bank = zeros(size(input));
		  for i = 1 : size(input) 
	      	mode(i) = mod(i-1,num_ch);
	      end
      end 
    end
    
    fclose(infile);

    data = input(:,1);

    % array to store output, one row of data for each channel
    if (strcmp(poly_type,'single_rate'))
      if (floor(length(data)/num_ch)*num_ch~=length(data))
        data=data(1:floor(length(data)/num_ch)*num_ch);
      end  
    elseif (strcmp(poly_type,'decimation'))
        if (floor(length(data)/num_ch)*num_ch~=length(data))
            data=data(1:floor(length(data)/num_ch)*num_ch);
        end
    end


    single_channel_data = cell(num_ch, 1);
    single_channel_bank = cell(num_ch, 1);
    output = cell(num_ch, 1)
    for j = 1: size(data,1);
      time_slot = mod(j-1,num_ch);
      if (reconfigurable) 
        cur_mode = mode(j);
        channel = mode_mapping(cur_mode+1,time_slot+1)+1; 
      else 
        channel = time_slot+1;
      end
        single_channel_data{channel} = [single_channel_data{channel} data(j)];
        single_channel_bank{channel} = [single_channel_bank{channel} bank(j)];
    end 

  for i =  1 : size(single_channel_bank,1)
  	if not(isempty(single_channel_bank{i}))
	  	for j = 1:length(single_channel_bank{i})
	  		for k = 1:int_fact
	       bank_int((j-1)*int_fact+k) = single_channel_bank{i}(j);
	       end
	    end 
    	single_channel_bank{i} = bank_int;
    end
  end



     % run this output through the model 
      for i =  1 : num_ch
        if(not(isempty(single_channel_data{i})))
          output_ch{i} = dup_fir3_mlab(single_channel_data{i}, single_channel_bank{i});
          output_ch_eaten{i} = output_ch{i};
        end
      end
    % reshape the output_channel so that the is channelwise


  limit =	length(data)*int_fact/dec_fact;
  out = cell(1, 1);
  for j = 1: limit;
      time_slot = mod(j-1,num_ch);
      if (reconfigurable) 
        cur_mode = mode(max(floor((j*dec_fact)/int_fact),1));
        channel = mode_mapping(cur_mode+1,time_slot+1)+1; 
      else 
        channel = time_slot+1;
      end
      out{1} = [out{1} output_ch_eaten{channel}(1)];
      output_ch_eaten{channel} = output_ch_eaten{channel}(1,2:end);
  end


    % Write data out to file
    file_name = ['dup_fir3_model_output'];

    outfile1 = fopen([file_name, '.txt'],'w');
    fprintf(outfile1, '%ld\n', out{1});
    fclose(outfile1);
end
