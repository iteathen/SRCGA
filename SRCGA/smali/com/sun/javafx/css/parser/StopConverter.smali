.class public final Lcom/sun/javafx/css/parser/StopConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "StopConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/parser/StopConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/paint/Stop;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/StopConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/parser/StopConverter$1;)V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/StopConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/parser/StopConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/parser/StopConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/parser/StopConverter;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/css/parser/StopConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/parser/StopConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/StopConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/parser/StopConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Stop;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/StopConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Stop;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Stop;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/paint/Stop;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/StopConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/css/ParsedValue;

    move-object v3, v6

    .line 56
    .local v3, "values":[Ljavafx/css/ParsedValue;
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/css/Size;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v4, v6

    .line 57
    .local v4, "offset":Ljava/lang/Double;
    move-object v6, v3

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/paint/Color;

    move-object v5, v6

    .line 58
    .local v5, "color":Ljavafx/scene/paint/Color;
    new-instance v6, Ljavafx/scene/paint/Stop;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/StopConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/StopConverter;
    const-string v1, "StopConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/StopConverter;
    return-object v0
.end method
