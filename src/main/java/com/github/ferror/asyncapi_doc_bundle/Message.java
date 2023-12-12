package com.github.ferror.asyncapi_doc_bundle;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;

@Target(ElementType.ANNOTATION_TYPE)
public @interface Message
{
    String name = "";
    String channel = "";
    ChannelType channelType = ChannelType.SUBSCRIBE;
    Collection<Property> properties = new ArrayList<Property>();
}
