package SPVM::File::Temp;

our $VERSION = "0.023";

1;

=head1 Name

SPVM::File::Temp - Temporary Files and Directories

=head1 Description

File::Temp class in L<SPVM> has methods to create temporary files and directories.

=head1 Usage

  use File::Temp;
  
  # Create a temporary file
  my $tmp_fh = File::Temp->new;
  
  my $tmp_filename = $tmp_fh->filename;
  
  $tmp_fh->print("Hello World!");
  
  # With options
  my $tmp_fh = File::Temp->new({DIR => $dir, TEMPLATE => $template, UNLINK => 0});
  
  # Create a temporary directory
  my $tmp_dir = File::Temp->newdir;
  
  my $tmp_dirname = $tmp_dir->dirname;

=head1 Super Class

L<IO::File>

=head1 Class Methods

=head2 new

C<static method new : L<File::Temp|SPVM::File::Temp> ($options : object[] = undef);>

Creates a new L<File::Temp|SPVM::File::Temp> object given the options $options, and returns it.

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

=head4 SUFFIX option

C<SUFFIX>

Type:string, Default:""

=head4 UNLINK option

C<UNLINK>

Type:L<Int|SPVM::Int>, Default:1

=head2 newdir

C<static method newdir : L<File::Temp::Dir|SPVM::File::Temp::Dir> ($options : object[] = undef);>

Calls L<File::Temp::Dir#new|SPVM::File::Temp::Dir/new> method given the options $options, and retunrs its return value.

=head2 DESTROY

C<method DESTROY : void ();>

Closes the file descriptor if the file handle is opend.

If L</"UNLINK option"> is a true value and the process ID of the process that created the temporary file is the same as the current process ID,
removes the temporary file.

=head1 Repository

L<SPVM::File::Temp - Github|https://github.com/yuki-kimoto/SPVM-File-Temp>

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License
