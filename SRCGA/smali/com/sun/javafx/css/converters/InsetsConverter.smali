.class public final Lcom/sun/javafx/css/converters/InsetsConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "InsetsConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;,
        Lcom/sun/javafx/css/converters/InsetsConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/geometry/Insets;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/InsetsConverter$1;)V
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/InsetsConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/InsetsConverter;-><init>()V

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
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/sun/javafx/css/converters/InsetsConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/InsetsConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/InsetsConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/geometry/Insets;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/geometry/Insets;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/geometry/Insets;"
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    move-object/from16 v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/geometry/Insets;>;"
    move-object/from16 v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljavafx/css/ParsedValue;

    move-object v3, v12

    .line 61
    .local v3, "sides":[Ljavafx/css/ParsedValue;
    move-object v12, v3

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    move-wide v4, v12

    .line 62
    .local v4, "top":D
    move-object v12, v3

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    move-object v12, v3

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    :goto_0
    move-wide v6, v12

    .line 63
    .local v6, "right":D
    move-object v12, v3

    array-length v12, v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_1

    move-object v12, v3

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    :goto_1
    move-wide v8, v12

    .line 64
    .local v8, "bottom":D
    move-object v12, v3

    array-length v12, v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_2

    move-object v12, v3

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    :goto_2
    move-wide v10, v12

    .line 65
    .local v10, "left":D
    new-instance v12, Ljavafx/geometry/Insets;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object v0, v12

    .end local v0    # "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    return-object v0

    .line 62
    .end local v6    # "right":D
    .end local v8    # "bottom":D
    .end local v10    # "left":D
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    :cond_0
    move-wide v12, v4

    goto :goto_0

    .line 63
    .restart local v6    # "right":D
    :cond_1
    move-wide v12, v4

    goto :goto_1

    .line 64
    .restart local v8    # "bottom":D
    :cond_2
    move-wide v12, v6

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    const-string v1, "InsetsConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/InsetsConverter;
    return-object v0
.end method
