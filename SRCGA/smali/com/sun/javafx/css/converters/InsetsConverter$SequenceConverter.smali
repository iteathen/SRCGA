.class public final Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "InsetsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/InsetsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/geometry/Insets;",
        ">;[",
        "Ljavafx/geometry/Insets;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/InsetsConverter$1;)V
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/InsetsConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/sun/javafx/css/converters/InsetsConverter$Holder;->SEQUENCE_INSTANCE:Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/geometry/Insets;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/geometry/Insets;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/geometry/Insets;",
            ">;[",
            "Ljavafx/geometry/Insets;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Ljavafx/geometry/Insets;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/geometry/Insets;>;[Ljavafx/geometry/Insets;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 89
    .local v3, "layers":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/geometry/Insets;>;"
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [Ljavafx/geometry/Insets;

    move-object v4, v6

    .line 90
    .local v4, "insets":[Ljavafx/geometry/Insets;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "layer":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 91
    move-object v6, v4

    move v7, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v8

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/geometry/Insets;

    aput-object v8, v6, v7

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    const-string v1, "InsetsSequenceConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;
    return-object v0
.end method
