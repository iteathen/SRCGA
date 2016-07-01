.class public final Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BorderStrokeStyleSequenceConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/BorderStrokeStyle;",
        ">;[",
        "Ljavafx/scene/layout/BorderStrokeStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final BORDER_STYLE_SEQUENCE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;->BORDER_STYLE_SEQUENCE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;->BORDER_STYLE_SEQUENCE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/layout/BorderStrokeStyle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;[",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Ljavafx/scene/layout/BorderStrokeStyle;"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BorderStrokeStyle;>;[Ljavafx/scene/layout/BorderStrokeStyle;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/css/ParsedValue;

    move-object v3, v5

    .line 58
    .local v3, "borders":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BorderStrokeStyle;>;"
    const/4 v5, 0x4

    new-array v5, v5, [Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v4, v5

    .line 60
    .local v4, "styles":[Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v3

    array-length v7, v7

    if-lez v7, :cond_0

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    .line 61
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/layout/BorderStrokeStyle;

    :goto_0
    aput-object v7, v5, v6

    .line 63
    move-object v5, v4

    const/4 v6, 0x1

    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v2

    .line 64
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/layout/BorderStrokeStyle;

    :goto_1
    aput-object v7, v5, v6

    .line 66
    move-object v5, v4

    const/4 v6, 0x2

    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    move-object v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    move-object v8, v2

    .line 67
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/layout/BorderStrokeStyle;

    :goto_2
    aput-object v7, v5, v6

    .line 69
    move-object v5, v4

    const/4 v6, 0x3

    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_3

    move-object v7, v3

    const/4 v8, 0x3

    aget-object v7, v7, v8

    move-object v8, v2

    .line 70
    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/layout/BorderStrokeStyle;

    :goto_3
    aput-object v7, v5, v6

    .line 72
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    return-object v0

    .line 61
    .restart local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    :cond_0
    sget-object v7, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    goto :goto_0

    .line 64
    :cond_1
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    goto :goto_1

    .line 67
    :cond_2
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    goto :goto_2

    .line 70
    :cond_3
    move-object v7, v4

    const/4 v8, 0x1

    aget-object v7, v7, v8

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    const-string v1, "BorderStrokeStyleSequenceConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;
    return-object v0
.end method
