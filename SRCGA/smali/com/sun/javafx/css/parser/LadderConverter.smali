.class public final Lcom/sun/javafx/css/parser/LadderConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "LadderConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/parser/LadderConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LadderConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/parser/LadderConverter$1;)V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LadderConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/parser/LadderConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/parser/LadderConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/parser/LadderConverter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sun/javafx/css/parser/LadderConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/parser/LadderConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LadderConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/parser/LadderConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Color;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/LadderConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Color;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Color;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/paint/Color;"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LadderConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Color;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljavafx/css/ParsedValue;

    move-object v3, v7

    .line 52
    .local v3, "values":[Ljavafx/css/ParsedValue;
    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/paint/Color;

    move-object v4, v7

    .line 53
    .local v4, "color":Ljavafx/scene/paint/Color;
    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    new-array v7, v7, [Ljavafx/scene/paint/Stop;

    move-object v5, v7

    .line 54
    .local v5, "stops":[Ljavafx/scene/paint/Stop;
    const/4 v7, 0x1

    move v6, v7

    .local v6, "v":I
    :goto_0
    move v7, v6

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 55
    move-object v7, v5

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v3

    move v10, v6

    aget-object v9, v9, v10

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/paint/Stop;

    aput-object v9, v7, v8

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 57
    :cond_0
    move-object v7, v4

    move-object v8, v5

    invoke-static {v7, v8}, Lcom/sun/javafx/util/Utils;->ladder(Ljavafx/scene/paint/Color;[Ljavafx/scene/paint/Stop;)Ljavafx/scene/paint/Color;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/parser/LadderConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/LadderConverter;
    const-string v1, "LadderConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/LadderConverter;
    return-object v0
.end method
