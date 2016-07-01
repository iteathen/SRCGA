.class public final Lcom/sun/javafx/css/parser/DeriveColorConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "DeriveColorConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/parser/DeriveColorConverter$Holder;
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
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/parser/DeriveColorConverter$1;)V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/parser/DeriveColorConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/parser/DeriveColorConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/parser/DeriveColorConverter;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/css/parser/DeriveColorConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/parser/DeriveColorConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/parser/DeriveColorConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Color;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Color;
    .locals 10
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
    .line 54
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    move-object v2, p1

    .local v2, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Color;>;"
    move-object v3, p2

    .local v3, "font":Ljavafx/scene/text/Font;
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljavafx/css/ParsedValue;

    move-object v4, v7

    .line 55
    .local v4, "values":[Ljavafx/css/ParsedValue;
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/paint/Color;

    move-object v5, v7

    .line 56
    .local v5, "color":Ljavafx/scene/paint/Color;
    move-object v7, v4

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Size;

    move-object v6, v7

    .line 57
    .local v6, "brightness":Lcom/sun/javafx/css/Size;
    move-object v7, v5

    move-object v8, v6

    move-object v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/util/Utils;->deriveColor(Ljavafx/scene/paint/Color;D)Ljavafx/scene/paint/Color;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    const-string v1, "DeriveColorConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/DeriveColorConverter;
    return-object v0
.end method
