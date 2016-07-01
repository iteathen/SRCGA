.class public final Lcom/sun/javafx/css/converters/ColorConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "ColorConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/ColorConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljava/lang/String;",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ColorConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/ColorConverter$1;)V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ColorConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/ColorConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/ColorConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/sun/javafx/css/converters/ColorConverter$Holder;->COLOR_INSTANCE:Lcom/sun/javafx/css/converters/ColorConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ColorConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/ColorConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Color;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/ColorConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Color;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/paint/Color;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/paint/Color;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ColorConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/paint/Color;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 52
    .local v3, "val":Ljava/lang/Object;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 53
    const/4 v6, 0x0

    move-object v0, v6

    .line 71
    .end local v0    # "this":Lcom/sun/javafx/css/converters/ColorConverter;
    :goto_0
    return-object v0

    .line 55
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/ColorConverter;
    :cond_0
    move-object v6, v3

    instance-of v6, v6, Ljavafx/scene/paint/Color;

    if-eqz v6, :cond_1

    .line 56
    move-object v6, v3

    check-cast v6, Ljavafx/scene/paint/Color;

    move-object v0, v6

    goto :goto_0

    .line 58
    :cond_1
    move-object v6, v3

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 59
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 60
    .local v4, "str":Ljava/lang/String;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "null"

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 61
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 64
    :cond_3
    move-object v6, v3

    :try_start_0
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljavafx/scene/paint/Color;->web(Ljava/lang/String;)Ljavafx/scene/paint/Color;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 65
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 70
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not a color: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    sget-object v6, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v0, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/ColorConverter;
    const-string v1, "ColorConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/ColorConverter;
    return-object v0
.end method
