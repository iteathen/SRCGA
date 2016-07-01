.class public final Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "RepeatStructConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[[",
        "Ljavafx/css/ParsedValue",
        "<",
        "Ljava/lang/String;",
        "Ljavafx/scene/layout/BackgroundRepeat;",
        ">;[",
        "Lcom/sun/javafx/scene/layout/region/RepeatStruct;",
        ">;"
    }
.end annotation


# static fields
.field private static final REPEAT_STRUCT_CONVERTER:Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;


# instance fields
.field private final repeatConverter:Lcom/sun/javafx/css/converters/EnumConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/converters/EnumConverter",
            "<",
            "Ljavafx/scene/layout/BackgroundRepeat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->REPEAT_STRUCT_CONVERTER:Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-class v4, Ljavafx/scene/layout/BackgroundRepeat;

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->repeatConverter:Lcom/sun/javafx/css/converters/EnumConverter;

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->REPEAT_STRUCT_CONVERTER:Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[[",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/layout/BackgroundRepeat;",
            ">;[",
            "Lcom/sun/javafx/scene/layout/region/RepeatStruct;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Lcom/sun/javafx/scene/layout/region/RepeatStruct;"
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    move-object/from16 v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[[Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/layout/BackgroundRepeat;>;[Lcom/sun/javafx/scene/layout/region/RepeatStruct;>;"
    move-object/from16 v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljavafx/css/ParsedValue;

    move-object v3, v9

    .line 55
    .local v3, "layers":[[Ljavafx/css/ParsedValue;, "[[Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/layout/BackgroundRepeat;>;"
    move-object v9, v3

    array-length v9, v9

    new-array v9, v9, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    move-object v4, v9

    .line 56
    .local v4, "backgroundRepeat":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    const/4 v9, 0x0

    move v5, v9

    .local v5, "l":I
    :goto_0
    move v9, v5

    move-object v10, v3

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 57
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 58
    .local v6, "repeats":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/layout/BackgroundRepeat;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->repeatConverter:Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v10, v6

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/css/converters/EnumConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Ljavafx/scene/layout/BackgroundRepeat;

    move-object v7, v9

    .line 59
    .local v7, "horizontal":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->repeatConverter:Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v10, v6

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/css/converters/EnumConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Ljavafx/scene/layout/BackgroundRepeat;

    move-object v8, v9

    .line 60
    .local v8, "vertical":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v9, v4

    move v10, v5

    new-instance v11, Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/scene/layout/region/RepeatStruct;-><init>(Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;)V

    aput-object v11, v9, v10

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v6    # "repeats":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/layout/BackgroundRepeat;>;"
    .end local v7    # "horizontal":Ljavafx/scene/layout/BackgroundRepeat;
    .end local v8    # "vertical":Ljavafx/scene/layout/BackgroundRepeat;
    :cond_0
    move-object v9, v4

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    const-string v1, "RepeatStructConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;
    return-object v0
.end method
