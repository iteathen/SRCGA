.class public final Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "SizeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/SizeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "[",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/SizeConverter$1;)V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/SizeConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sun/javafx/css/converters/SizeConverter$Holder;->SEQUENCE_INSTANCE:Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljava/lang/Number;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljava/lang/Number;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Ljava/lang/Number;"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;[Ljava/lang/Number;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 78
    .local v3, "sizes":[Ljavafx/css/ParsedValue;
    move-object v6, v3

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/Number;

    move-object v4, v6

    .line 79
    .local v4, "doubles":[Ljava/lang/Number;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 80
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Size;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    :cond_0
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    const-string v1, "Size.SequenceConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;
    return-object v0
.end method
