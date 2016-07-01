.class public final Lcom/sun/javafx/css/converters/FontConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "FontConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;,
        Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;,
        Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;,
        Lcom/sun/javafx/css/converters/FontConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/text/Font;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/FontConverter$1;)V
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/FontConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/FontConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/sun/javafx/css/converters/FontConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/FontConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/converters/FontConverter;->convert(Ljava/util/Map;)Ljavafx/scene/text/Font;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter;
    return-object v0
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/FontConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/text/Font;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter;
    return-object v0
.end method

.method public convert(Ljava/util/Map;)Ljavafx/scene/text/Font;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljavafx/scene/text/Font;"
        }
    .end annotation

    .prologue
    .line 79
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/css/converters/FontConverter;
    move-object/from16 v2, p1

    .local v2, "convertedValues":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;Ljava/lang/Object;>;"
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v13

    move-object v3, v13

    .line 80
    .local v3, "font":Ljavafx/scene/text/Font;
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v13

    move-wide v4, v13

    .line 81
    .local v4, "size":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/scene/text/Font;->getFamily()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 82
    .local v6, "family":Ljava/lang/String;
    sget-object v13, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    move-object v7, v13

    .line 83
    .local v7, "weight":Ljavafx/scene/text/FontWeight;
    sget-object v13, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    move-object v8, v13

    .line 85
    .local v8, "style":Ljavafx/scene/text/FontPosture;
    move-object v13, v2

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v9, v13

    :goto_0
    move-object v13, v9

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v10, v13

    .line 87
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;Ljava/lang/Object;>;"
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    .line 88
    .local v11, "value":Ljava/lang/Object;
    move-object v13, v11

    if-nez v13, :cond_0

    .line 89
    goto :goto_0

    .line 91
    :cond_0
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/css/CssMetaData;

    invoke-virtual {v13}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 92
    .local v12, "prop":Ljava/lang/String;
    move-object v13, v12

    const-string v14, "font-size"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 93
    move-object v13, v11

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    move-wide v4, v13

    .line 101
    :cond_1
    :goto_1
    goto :goto_0

    .line 94
    :cond_2
    move-object v13, v12

    const-string v14, "font-family"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 95
    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    goto :goto_1

    .line 96
    :cond_3
    move-object v13, v12

    const-string v14, "font-weight"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 97
    move-object v13, v11

    check-cast v13, Ljavafx/scene/text/FontWeight;

    move-object v7, v13

    goto :goto_1

    .line 98
    :cond_4
    move-object v13, v12

    const-string v14, "font-style"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 99
    move-object v13, v11

    check-cast v13, Ljavafx/scene/text/FontPosture;

    move-object v8, v13

    goto :goto_1

    .line 102
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;Ljava/lang/Object;>;"
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "prop":Ljava/lang/String;
    :cond_5
    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-wide/from16 v16, v4

    invoke-static/range {v13 .. v17}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v13

    move-object v9, v13

    .line 103
    .local v9, "f":Ljavafx/scene/text/Font;
    move-object v13, v9

    move-object v1, v13

    .end local v1    # "this":Lcom/sun/javafx/css/converters/FontConverter;
    return-object v1
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/text/Font;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/text/Font;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/text/Font;"
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter;
    move-object/from16 v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;>;"
    move-object/from16 v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljavafx/css/ParsedValue;

    move-object v3, v11

    .line 61
    .local v3, "values":[Ljavafx/css/ParsedValue;
    move-object v11, v2

    if-eqz v11, :cond_1

    move-object v11, v2

    :goto_0
    move-object v4, v11

    .line 62
    .local v4, "aFont":Ljavafx/scene/text/Font;
    move-object v11, v3

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_2

    move-object v11, v3

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    move-object v5, v11

    .line 65
    .local v5, "family":Ljava/lang/String;
    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v11

    move-wide v6, v11

    .line 66
    .local v6, "fsize":D
    move-object v11, v3

    const/4 v12, 0x1

    aget-object v11, v11, v12

    if-eqz v11, :cond_0

    .line 67
    move-object v11, v3

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/css/ParsedValue;

    move-object v8, v11

    .line 68
    .local v8, "pv":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<**>;"
    move-object v11, v8

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/javafx/css/Size;

    move-object v9, v11

    .line 69
    .local v9, "size":Lcom/sun/javafx/css/Size;
    move-object v11, v9

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/css/Size;->pixels(DLjavafx/scene/text/Font;)D

    move-result-wide v11

    move-wide v6, v11

    .line 71
    .end local v8    # "pv":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<**>;"
    .end local v9    # "size":Lcom/sun/javafx/css/Size;
    :cond_0
    move-object v11, v3

    const/4 v12, 0x2

    aget-object v11, v11, v12

    if-eqz v11, :cond_3

    move-object v11, v3

    const/4 v12, 0x2

    aget-object v11, v11, v12

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/text/FontWeight;

    :goto_2
    move-object v8, v11

    .line 72
    .local v8, "weight":Ljavafx/scene/text/FontWeight;
    move-object v11, v3

    const/4 v12, 0x3

    aget-object v11, v11, v12

    if-eqz v11, :cond_4

    move-object v11, v3

    const/4 v12, 0x3

    aget-object v11, v11, v12

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/text/FontPosture;

    :goto_3
    move-object v9, v11

    .line 73
    .local v9, "style":Ljavafx/scene/text/FontPosture;
    move-object v11, v5

    move-object v12, v8

    move-object v13, v9

    move-wide v14, v6

    invoke-static {v11, v12, v13, v14, v15}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v11

    move-object v10, v11

    .line 74
    .local v10, "f":Ljavafx/scene/text/Font;
    move-object v11, v10

    move-object v0, v11

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter;
    return-object v0

    .line 61
    .end local v4    # "aFont":Ljavafx/scene/text/Font;
    .end local v5    # "family":Ljava/lang/String;
    .end local v6    # "fsize":D
    .end local v8    # "weight":Ljavafx/scene/text/FontWeight;
    .end local v9    # "style":Ljavafx/scene/text/FontPosture;
    .end local v10    # "f":Ljavafx/scene/text/Font;
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter;
    :cond_1
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v11

    goto :goto_0

    .line 62
    .restart local v4    # "aFont":Ljavafx/scene/text/Font;
    :cond_2
    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/scene/text/Font;->getFamily()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 71
    .restart local v5    # "family":Ljava/lang/String;
    .restart local v6    # "fsize":D
    :cond_3
    sget-object v11, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    goto :goto_2

    .line 72
    .restart local v8    # "weight":Ljavafx/scene/text/FontWeight;
    :cond_4
    sget-object v11, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter;
    const-string v1, "FontConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter;
    return-object v0
.end method
