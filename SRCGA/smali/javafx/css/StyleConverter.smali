.class public Ljavafx/css/StyleConverter;
.super Ljava/lang/Object;
.source "StyleConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<TF;TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanConverter()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getColorConverter()Ljavafx/css/StyleConverter;
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
    .line 96
    invoke-static {}, Lcom/sun/javafx/css/converters/ColorConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getDurationConverter()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<*",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/sun/javafx/css/converters/DurationConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getEffectConverter()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/sun/javafx/css/converters/EffectConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getEnumConverter(Ljava/lang/Class;)Ljavafx/css/StyleConverter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v2, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    .line 117
    .local v1, "converter":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    return-object v0
.end method

.method public static getFontConverter()Ljavafx/css/StyleConverter;
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
    .line 126
    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getInsetsConverter()Ljavafx/css/StyleConverter;
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
    .line 134
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getPaintConverter()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getSizeConverter()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<*",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getStringConverter()Ljavafx/css/StyleConverter;
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
    .line 175
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlConverter()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<TF;TT;>;",
            "Ljavafx/scene/text/Font;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<TF;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<TF;TT;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<TF;TT;>;"
    return-object v0
.end method
