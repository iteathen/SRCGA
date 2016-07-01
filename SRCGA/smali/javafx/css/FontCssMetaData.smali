.class public abstract Ljavafx/css/FontCssMetaData;
.super Ljavafx/css/CssMetaData;
.source "FontCssMetaData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljavafx/css/Styleable;",
        ">",
        "Ljavafx/css/CssMetaData",
        "<TS;",
        "Ljavafx/scene/text/Font;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/css/FontCssMetaData;, "Ljavafx/css/FontCssMetaData<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "initial":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v6, v2

    const/4 v7, 0x1

    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Ljavafx/css/FontCssMetaData;->createSubProperties(Ljava/lang/String;Ljavafx/scene/text/Font;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;ZLjava/util/List;)V

    .line 72
    return-void
.end method

.method private static createSubProperties(Ljava/lang/String;Ljavafx/scene/text/Font;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljavafx/css/Styleable;",
            ">(",
            "Ljava/lang/String;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "initial":Ljavafx/scene/text/Font;
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 79
    .local v2, "subProperties":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<TS;*>;>;"
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    :goto_0
    move-object v3, v8

    .line 81
    .local v3, "defaultFont":Ljavafx/scene/text/Font;
    new-instance v8, Ljavafx/css/FontCssMetaData$1;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    const-string v11, "-family"

    .line 82
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/text/Font;->getFamily()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/FontCssMetaData$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/String;Z)V

    move-object v4, v8

    .line 94
    .local v4, "FAMILY":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    move-object v8, v2

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 96
    new-instance v8, Ljavafx/css/FontCssMetaData$2;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    const-string v11, "-size"

    .line 97
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/FontCssMetaData$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;Z)V

    move-object v5, v8

    .line 109
    .local v5, "SIZE":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Number;>;"
    move-object v8, v2

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 111
    new-instance v8, Ljavafx/css/FontCssMetaData$3;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    const-string v11, "-style"

    .line 112
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 113
    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;

    move-result-object v11

    sget-object v12, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/FontCssMetaData$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/text/FontPosture;Z)V

    move-object v6, v8

    .line 124
    .local v6, "STYLE":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/text/FontPosture;>;"
    move-object v8, v2

    move-object v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 126
    new-instance v8, Ljavafx/css/FontCssMetaData$4;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    const-string v11, "-weight"

    .line 127
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;

    move-result-object v11

    sget-object v12, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    const/4 v13, 0x1

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/FontCssMetaData$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/text/FontWeight;Z)V

    move-object v7, v8

    .line 139
    .local v7, "WEIGHT":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/text/FontWeight;>;"
    move-object v8, v2

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 141
    move-object v8, v2

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "property":Ljava/lang/String;
    return-object v0

    .line 79
    .end local v3    # "defaultFont":Ljavafx/scene/text/Font;
    .end local v4    # "FAMILY":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    .end local v5    # "SIZE":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Number;>;"
    .end local v6    # "STYLE":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/text/FontPosture;>;"
    .end local v7    # "WEIGHT":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/text/FontWeight;>;"
    .restart local v0    # "property":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v8

    goto/16 :goto_0
.end method
