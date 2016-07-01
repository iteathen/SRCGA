.class public Lorg/apache/xerces/impl/msg/XMLMessageFormatter;
.super Ljava/lang/Object;
.source "XMLMessageFormatter.java"

# interfaces
.implements Lorg/apache/xerces/util/MessageFormatter;


# static fields
.field public static final XMLNS_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xml-names-19990114"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"


# instance fields
.field private fLocale:Ljava/util/Locale;

.field private fResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/msg/XMLMessageFormatter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    .line 86
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/impl/msg/XMLMessageFormatter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "arguments":[Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    if-eqz v7, :cond_0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    if-eq v7, v8, :cond_2

    .line 111
    :cond_0
    move-object v7, v1

    if-eqz v7, :cond_1

    .line 112
    move-object v7, v0

    const-string v8, "org.apache.xerces.impl.msg.XMLMessages"

    move-object v9, v1

    invoke-static {v8, v9}, Ljava/util/PropertyResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 114
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fLocale:Ljava/util/Locale;

    .line 116
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    if-nez v7, :cond_2

    .line 117
    move-object v7, v0

    const-string v8, "org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v8}, Ljava/util/PropertyResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    .line 123
    :cond_2
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    move-object v4, v7

    .line 124
    .local v4, "msg":Ljava/lang/String;
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 126
    move-object v7, v4

    move-object v8, v3

    :try_start_1
    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v4, v7

    .line 131
    .line 139
    .line 142
    :cond_3
    :goto_0
    move-object v7, v4

    if-nez v7, :cond_5

    .line 143
    move-object v7, v2

    move-object v4, v7

    .line 144
    move-object v7, v3

    array-length v7, v7

    if-lez v7, :cond_5

    .line 145
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 146
    .local v5, "str":Ljava/lang/StringBuffer;
    move-object v7, v5

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 147
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 148
    move v7, v6

    if-lez v7, :cond_4

    .line 149
    move-object v7, v5

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 151
    :cond_4
    move-object v7, v5

    move-object v8, v3

    move v9, v6

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 147
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 128
    .end local v5    # "str":Ljava/lang/StringBuffer;
    .end local v6    # "i":I
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 129
    .local v5, "e":Ljava/lang/Exception;
    move-object v7, v0

    :try_start_2
    iget-object v7, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v8, "FormatFailed"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    .line 136
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 137
    .local v5, "e":Ljava/util/MissingResourceException;
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;->fResourceBundle:Ljava/util/ResourceBundle;

    const-string v8, "BadMessageKey"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 138
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v7, Ljava/util/MissingResourceException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    move-object v10, v4

    move-object v11, v2

    invoke-direct {v8, v9, v10, v11}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    .line 156
    .end local v5    # "e":Ljava/util/MissingResourceException;
    :cond_5
    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lorg/apache/xerces/impl/msg/XMLMessageFormatter;
    return-object v0
.end method
