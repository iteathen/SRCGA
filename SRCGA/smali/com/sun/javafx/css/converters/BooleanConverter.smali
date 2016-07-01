.class public final Lcom/sun/javafx/css/converters/BooleanConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BooleanConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/BooleanConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/BooleanConverter$1;)V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/BooleanConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/BooleanConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/sun/javafx/css/converters/BooleanConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/BooleanConverter;

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object v2, p2

    .local v2, "not_used":Ljavafx/scene/text/Font;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 51
    .local v3, "str":Ljava/lang/String;
    move-object v4, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    return-object v0
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/BooleanConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    const-string v1, "BooleanConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/BooleanConverter;
    return-object v0
.end method
