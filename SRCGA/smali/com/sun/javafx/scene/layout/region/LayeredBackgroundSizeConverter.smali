.class public final Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "LayeredBackgroundSizeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/BackgroundSize;",
        ">;[",
        "Ljavafx/scene/layout/BackgroundSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYERED_BACKGROUND_SIZE_CONVERTER:Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;->LAYERED_BACKGROUND_SIZE_CONVERTER:Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;->LAYERED_BACKGROUND_SIZE_CONVERTER:Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/layout/BackgroundSize;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/layout/BackgroundSize;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BackgroundSize;",
            ">;[",
            "Ljavafx/scene/layout/BackgroundSize;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Ljavafx/scene/layout/BackgroundSize;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BackgroundSize;>;[Ljavafx/scene/layout/BackgroundSize;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 58
    .local v3, "layers":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BackgroundSize;>;"
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [Ljavafx/scene/layout/BackgroundSize;

    move-object v4, v6

    .line 59
    .local v4, "sizes":[Ljavafx/scene/layout/BackgroundSize;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "l":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 60
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/layout/BackgroundSize;

    aput-object v8, v6, v7

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;
    return-object v0
.end method
