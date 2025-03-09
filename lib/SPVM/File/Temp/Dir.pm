package SPVM::File::Temp::Dir;

1;

=head1 Name

SPVM::File::Temp::Dir - Temporary Directories

=head1 Description

The File::Temp::Dir class in L<SPVM> has methods to manipulate temporary directories.

=head2 Usage
  
  use File::Temp;
  
  my $tmp_dir = File::Temp->newdir;
  
  my $tmp_dir_name = $tmp_dir->dirname;

=head1 Fields

C<has dirname : ro string;>

Returns the directory name.

=head2 new

C<static method new : L<File::Temp::Dir|SPVM::File::Temp::Dir> ($options : object[] = undef);>

Creates a new L<File::Temp::Dir|SPVM::File::Temp::Dir> object given the options $options, and returns it.

=head3 new Options

=head4 DIR option

C<DIR>

Type:string, Default:undef

=head4 TMPDIR option

C<TMPDIR>

Type:L<Int|SPVM::Int>, Default:0

=head4 TEMPLATE option

C<TEMPLATE>

Type:string, Default:undef

=head4 UNLINK option

C<UNLINK>

Type:L<Int|SPVM::Int>, Default:1

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License
