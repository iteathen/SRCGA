.class public Lcom/sun/javafx/css/converters/EffectConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "EffectConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;,
        Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;,
        Lcom/sun/javafx/css/converters/EffectConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/effect/Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/effect/Effect;",
            ">;",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 64
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/sun/javafx/css/converters/EffectConverter;->cache:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/javafx/css/converters/EffectConverter;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
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
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/sun/javafx/css/converters/EffectConverter$Holder;->EFFECT_CONVERTER:Lcom/sun/javafx/css/converters/EffectConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/EffectConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/EffectConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/effect/Effect;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/effect/Effect;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/effect/Effect;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/effect/Effect;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Parsed value is not an Effect"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter;
    const-string v1, "EffectConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/EffectConverter;
    return-object v0
.end method
