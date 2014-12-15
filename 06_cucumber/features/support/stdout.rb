Then(/^the (.+) of that shell command should(| not) be "([^"]*)"$/) do |stream,condition,expected|

    stream.downcase!

    unless vagrant_glue.last_shell_command_output.has_key?( stream.to_sym )
        raise "vagrant_glue.last_shell_command_output structure has no #{stream}"
    end

    actual = vagrant_glue.last_shell_command_output[stream.to_sym].chomp
    is_equal = ( actual == expected )

    should_be_equal = condition != ' not'

    if is_equal and !should_be_equal
        raise "#{stream} is \"#{actual}\", but it shouldn't"
    end

    if !is_equal and should_be_equal
        raise "#{stream} is \"#{actual}\", but it should be \"#{expected}\""
    end
end
