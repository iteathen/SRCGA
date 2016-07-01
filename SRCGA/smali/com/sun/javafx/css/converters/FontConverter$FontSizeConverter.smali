.class public final Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "FontConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/FontConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontSizeConverter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter$Holder;
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
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/FontConverter$1;)V
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/FontConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Number;
    .locals 8
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
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljava/lang/Number;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/css/ParsedValue;

    move-object v3, v4

    .line 222
    .local v3, "size":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/css/Size;

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v5

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/css/Size;->pixels(DLjavafx/scene/text/Font;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    return-object v0
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Number;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    const-string v1, "FontConverter.FontSizeConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;
    return-object v0
.end method
