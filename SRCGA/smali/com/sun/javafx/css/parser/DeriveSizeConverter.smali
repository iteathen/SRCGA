.class public final Lcom/sun/javafx/css/parser/DeriveSizeConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "DeriveSizeConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/parser/DeriveSizeConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<",
        "Lcom/sun/javafx/css/Size;",
        "Lcom/sun/javafx/css/Size;",
        ">;",
        "Lcom/sun/javafx/css/Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/parser/DeriveSizeConverter$1;)V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/parser/DeriveSizeConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/parser/DeriveSizeConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/css/parser/DeriveSizeConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/parser/DeriveSizeConverter;

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Lcom/sun/javafx/css/Size;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<",
            "Lcom/sun/javafx/css/Size;",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Lcom/sun/javafx/css/Size;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    move-object/from16 v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljavafx/css/ParsedValue;

    move-object v3, v8

    .line 56
    .local v3, "sizes":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;"
    move-object v8, v3

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Size;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v8

    move-wide v4, v8

    .line 57
    .local v4, "px1":D
    move-object v8, v3

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Size;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v8

    move-wide v6, v8

    .line 58
    .local v6, "px2":D
    new-instance v8, Lcom/sun/javafx/css/Size;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-wide v10, v4

    move-wide v12, v6

    add-double/2addr v10, v12

    sget-object v12, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    return-object v0
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/parser/DeriveSizeConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Lcom/sun/javafx/css/Size;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    const-string v1, "DeriveSizeConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/parser/DeriveSizeConverter;
    return-object v0
.end method
