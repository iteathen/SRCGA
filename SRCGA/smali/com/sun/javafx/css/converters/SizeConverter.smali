.class public final Lcom/sun/javafx/css/converters/SizeConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "SizeConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;,
        Lcom/sun/javafx/css/converters/SizeConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljavafx/css/ParsedValue",
        "<*",
        "Lcom/sun/javafx/css/Size;",
        ">;",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/SizeConverter$1;)V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/SizeConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/SizeConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/css/converters/SizeConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/SizeConverter;

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Number;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljava/lang/Number;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/css/ParsedValue;

    move-object v3, v4

    .line 54
    .local v3, "size":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/css/Size;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/converters/SizeConverter;
    return-object v0
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/SizeConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Number;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/SizeConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter;
    const-string v1, "SizeConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/SizeConverter;
    return-object v0
.end method
