.class public final Lcom/sun/javafx/css/converters/DurationConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "DurationConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/converters/DurationConverter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<",
        "Ljavafx/css/ParsedValue",
        "<*",
        "Lcom/sun/javafx/css/Size;",
        ">;",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/DurationConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/DurationConverter$1;)V
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/DurationConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/DurationConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/DurationConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavafx/css/StyleConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/css/converters/DurationConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/DurationConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/DurationConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/DurationConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/util/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/DurationConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/util/Duration;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljavafx/util/Duration;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/util/Duration;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/DurationConverter;
    move-object v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljavafx/util/Duration;>;"
    move-object v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/css/ParsedValue;

    move-object v3, v8

    .line 54
    .local v3, "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Size;

    move-object v4, v8

    .line 55
    .local v4, "size":Lcom/sun/javafx/css/Size;
    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v8

    move-wide v5, v8

    .line 56
    .local v5, "time":D
    const/4 v8, 0x0

    move-object v7, v8

    .line 57
    .local v7, "duration":Ljavafx/util/Duration;
    move-wide v8, v5

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 58
    sget-object v8, Lcom/sun/javafx/css/converters/DurationConverter$1;->$SwitchMap$com$sun$javafx$css$SizeUnits:[I

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/css/SizeUnits;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 61
    sget-object v8, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    move-object v7, v8

    .line 66
    :goto_0
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/converters/DurationConverter;
    return-object v0

    .line 59
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/DurationConverter;
    :pswitch_0
    move-wide v8, v5

    invoke-static {v8, v9}, Ljavafx/util/Duration;->seconds(D)Ljavafx/util/Duration;

    move-result-object v8

    move-object v7, v8

    goto :goto_0

    .line 60
    :pswitch_1
    move-wide v8, v5

    invoke-static {v8, v9}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v8

    move-object v7, v8

    goto :goto_0

    .line 64
    :cond_0
    sget-object v8, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    move-object v7, v8

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/DurationConverter;
    const-string v1, "DurationConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/DurationConverter;
    return-object v0
.end method
