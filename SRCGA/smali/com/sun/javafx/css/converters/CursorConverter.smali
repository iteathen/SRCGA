.class public final Lcom/sun/javafx/css/converters/CursorConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "CursorConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/CursorConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljava/lang/String;",
        "Ljavafx/scene/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/CursorConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/CursorConverter$1;)V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/CursorConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/CursorConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/CursorConverter;-><init>()V

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
            "Ljavafx/scene/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/sun/javafx/css/converters/CursorConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/CursorConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/CursorConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/CursorConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/Cursor;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/CursorConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/Cursor;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/Cursor;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/CursorConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/Cursor;>;"
    move-object v2, p2

    .local v2, "not_used":Ljavafx/scene/text/Font;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 55
    .local v3, "string":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 57
    move-object v5, v3

    const-string v6, "Cursor."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 58
    .local v4, "index":I
    move v5, v4

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 59
    move-object v5, v3

    move v6, v4

    const-string v7, "Cursor."

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 61
    :cond_0
    move-object v5, v3

    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 65
    .end local v4    # "index":I
    :cond_1
    move-object v5, v3

    :try_start_0
    invoke-static {v5}, Ljavafx/scene/Cursor;->cursor(Ljava/lang/String;)Ljavafx/scene/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    .line 67
    .end local v0    # "this":Lcom/sun/javafx/css/converters/CursorConverter;
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/CursorConverter;
    :catch_0
    move-exception v5

    :goto_1
    move-object v4, v5

    .line 67
    .local v4, "exception":Ljava/lang/RuntimeException;
    sget-object v5, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    move-object v0, v5

    goto :goto_0

    .line 66
    .end local v4    # "exception":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/CursorConverter;
    const-string v1, "CursorConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/CursorConverter;
    return-object v0
.end method
