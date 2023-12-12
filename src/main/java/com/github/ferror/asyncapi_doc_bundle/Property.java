package com.github.ferror.asyncapi_doc_bundle;

public @interface Property
{
    String name = "";
    String description = "";
    PropertyType propertyType = PropertyType.STRING;
    Format format = null;
}
