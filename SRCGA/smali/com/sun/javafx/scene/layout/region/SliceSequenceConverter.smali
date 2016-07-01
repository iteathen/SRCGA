.class public final Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "SliceSequenceConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
        ">;[",
        "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
        ">;"
    }
.end annotation


# static fields
.field private static final BORDER_IMAGE_SLICE_SEQUENCE_CONVERTER:Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;->BORDER_IMAGE_SLICE_SEQUENCE_CONVERTER:Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;->BORDER_IMAGE_SLICE_SEQUENCE_CONVERTER:Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
            ">;[",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Lcom/sun/javafx/scene/layout/region/BorderImageSlices;>;[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 62
    .local v3, "layers":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Lcom/sun/javafx/scene/layout/region/BorderImageSlices;>;"
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-object v4, v6

    .line 63
    .local v4, "borderImageSlices":[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "l":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 64
    move-object v6, v4

    move v7, v5

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;

    move-result-object v8

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-result-object v8

    aput-object v8, v6, v7

    .line 63
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    const-string v1, "BorderImageSliceSequenceConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;
    return-object v0
.end method
