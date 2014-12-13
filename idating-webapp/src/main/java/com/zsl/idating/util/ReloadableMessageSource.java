package com.zsl.idating.util;

import org.springframework.context.support.ReloadableResourceBundleMessageSource;

import java.util.*;

public class ReloadableMessageSource extends ReloadableResourceBundleMessageSource {

    public Properties getProperties(Locale locale) {
        return super.getMergedProperties(locale).getProperties();
    }
}
