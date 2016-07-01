.class public final Lcom/sun/javafx/css/converters/StringConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "StringConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/StringConverter$SequenceConverter;,
        Lcom/sun/javafx/css/converters/StringConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/StringConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/StringConverter$1;)V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/StringConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/StringConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/StringConverter;-><init>()V

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/css/converters/StringConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/StringConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/StringConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/StringConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/StringConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/StringConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 56
    .local v3, "string":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 57
    const/4 v4, 0x0

    move-object v0, v4

    .line 59
    .end local v0    # "this":Lcom/sun/javafx/css/converters/StringConverter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/converters/StringConverter;
    :cond_0
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/util/Utils;->convertUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/StringConverter;
    const-string v1, "StringConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/StringConverter;
    return-object v0
.end method
