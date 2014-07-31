program file_read;

integer file;
integer nie;
string variable;
reg [31:0] value;
reg [31:0] h_array [string] ;
initial
begin:file_block
    file=$fopen("file.txt","r");
    if (file == 0)
        disable file_block;
    while(!$feof(file))
    begin
        nie=$fscanf(file,"%s %h/n",variable,value);
        h_array[variable] = value;
    end
    $fclose(file);

    //check read result.
    foreach (h_array[i])
    begin
        #1
        $display("hash index %0s value %0h",i, h_array[i]);
        $display($time);
    end
end

endprogram
