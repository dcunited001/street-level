LOREM_IPSUM_STRING = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec posuere pellentesque elementum. Suspendisse potenti. Praesent imperdiet magna ac dolor adipiscing egestas. Fusce et libero eu velit tincidunt convallis. Fusce dolor metus, blandit at iaculis nec, condimentum id felis. Suspendisse dapibus molestie sem, a ultrices velit dictum id. Nullam consectetur facilisis condimentum. Aenean quam neque, condimentum in aliquam in, semper a mi. Aliquam erat volutpat. Vestibulum luctus semper metus. Donec quam nulla, gravida eget condimentum a, interdum nec diam. Nullam ac blandit nisi. Fusce porta, diam et mollis imperdiet, diam sapien sodales diam, sed dictum tortor ante id tortor. Pellentesque tincidunt hendrerit sagittis. Nullam non odio ac est mattis eleifend. Nullam at est nibh. Pellentesque laoreet mi ut metus pharetra tempor. Proin et mauris id metus dapibus malesuada.\n\nCras turpis orci, faucibus ac hendrerit at, semper at sem. Quisque pellentesque egestas tincidunt. Pellentesque commodo, mi at tempus suscipit, justo diam tristique nunc, vitae tincidunt ante eros id nibh. Nulla facilisi. Quisque pharetra venenatis risus vel pulvinar. Donec eu imperdiet purus. Maecenas metus elit, suscipit nec rhoncus sollicitudin, faucibus quis leo. Nunc nisi lectus, lacinia id feugiat eget, porta quis massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer enim nulla, commodo ac euismod ac, rhoncus vel ipsum. Suspendisse potenti. Nulla vitae justo purus, a auctor mi. Duis viverra volutpat odio in tempor. Donec fringilla vehicula purus malesuada egestas.\n\nNullam et mollis elit. Nam non vehicula dolor. Nunc id mi lectus. Duis mattis auctor augue, non fermentum lectus mollis et. Nunc sed tortor sit amet justo mollis cursus et ac enim. Maecenas tortor lorem, suscipit in condimentum eu, ultrices ac nisl. Mauris diam ligula, venenatis vel feugiat sit amet, ultrices at augue. Pellentesque varius dui id enim aliquam eu dapibus tortor gravida. Pellentesque quis erat neque. Vestibulum ac purus lacus. Fusce at arcu lorem. Vivamus vitae ante nisl.\n\nAliquam erat volutpat. Praesent rhoncus mauris vitae odio tristique eget consequat diam ornare. Aenean egestas pellentesque erat, ut fermentum velit scelerisque in. Vivamus iaculis mi non eros bibendum sollicitudin. Pellentesque porta dapibus iaculis. Aliquam purus massa, convallis pellentesque venenatis at, sollicitudin ut orci. Duis facilisis ipsum quis dolor porta porttitor. Praesent quis orci ac tellus commodo sagittis. Integer felis sem, mattis id placerat eu, bibendum id est. In sed purus nisi. Fusce facilisis luctus dui, et vestibulum ipsum placerat a. Phasellus at dictum turpis. Ut condimentum sem quis purus auctor eu lobortis metus euismod.\n\nIn id velit sed turpis egestas accumsan in sit amet quam. Phasellus nec mattis nisl. Nullam porttitor ullamcorper ligula, imperdiet consequat massa aliquet vel. In eros ipsum, aliquet lacinia mattis id, lacinia id urna. Aliquam fermentum est eget purus mattis dictum. Ut rutrum blandit erat, quis aliquam felis laoreet venenatis. Donec enim enim, suscipit et mollis sit amet, ullamcorper vitae augue. Mauris et hendrerit lorem. Cras ac erat metus, et laoreet magna. Nunc cursus diam quis metus elementum et varius massa auctor. Suspendisse ac quam leo. Duis neque nisl, viverra ac mattis eget, hendrerit non metus. Phasellus sapien ante, vulputate at suscipit sit amet, elementum ut nisl. Nullam id ligula tortor. Sed vitae metus tincidunt leo volutpat egestas. Pellentesque pulvinar semper aliquet. Sed ut sem sed tellus ultrices lacinia. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut magna lacus, rhoncus nec lacinia id, tristique non purus."

def lorem(length=120)
  LOREM_IPSUM_STRING[0..length].strip + '.'
end