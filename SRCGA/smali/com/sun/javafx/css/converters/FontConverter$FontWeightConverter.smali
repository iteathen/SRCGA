.class public final Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "FontConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/FontConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontWeightConverter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljava/lang/String;",
        "Ljavafx/scene/text/FontWeight;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/FontConverter$1;)V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/FontConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontWeight;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontWeight;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/text/FontWeight;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/text/FontWeight;"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/text/FontWeight;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 179
    .local v3, "val":Ljava/lang/Object;
    const/4 v6, 0x0

    move-object v4, v6

    .line 181
    .local v4, "weight":Ljavafx/scene/text/FontWeight;
    move-object v6, v3

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 183
    move-object v6, v3

    :try_start_0
    check-cast v6, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 184
    .local v5, "sval":Ljava/lang/String;
    const-class v6, Ljavafx/scene/text/FontWeight;

    move-object v7, v5

    invoke-static {v6, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Ljavafx/scene/text/FontWeight;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v6

    .line 189
    .line 195
    .end local v5    # "sval":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    return-object v0

    .line 185
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 186
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v6, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    move-object v4, v6

    .line 189
    goto :goto_0

    .line 187
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 188
    .local v5, "npe":Ljava/lang/NullPointerException;
    sget-object v6, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    move-object v4, v6

    .line 189
    goto :goto_0

    .line 191
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    move-object v6, v3

    instance-of v6, v6, Ljavafx/scene/text/FontWeight;

    if-eqz v6, :cond_0

    .line 192
    move-object v6, v3

    check-cast v6, Ljavafx/scene/text/FontWeight;

    move-object v4, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    const-string v1, "FontConverter.WeightConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;
    return-object v0
.end method
