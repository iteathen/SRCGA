.class public final Lcom/sun/javafx/css/parser/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/parser/CSSParser$Term;,
        Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Lcom/sun/javafx/css/Size;",
            "Lcom/sun/javafx/css/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lsun/util/logging/PlatformLogger;

.field private static final ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Lcom/sun/javafx/css/Size;",
            "Lcom/sun/javafx/css/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIAL_REGION_URL_PREFIX:Ljava/lang/String; = "SPECIAL-REGION-URL:"

.field private static final ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Lcom/sun/javafx/css/Size;",
            "Lcom/sun/javafx/css/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static imports:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentToken:Lcom/sun/javafx/css/parser/Token;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourceOfInlineStyle:Ljavafx/css/Styleable;

.field private sourceOfStylesheet:Ljava/lang/String;

.field private stylesheetAsText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 115
    const-class v0, Lcom/sun/javafx/css/parser/CSSParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/parser/CSSParser;->$assertionsDisabled:Z

    .line 164
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    .line 2583
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    new-instance v2, Lcom/sun/javafx/css/Size;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 2586
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    new-instance v2, Lcom/sun/javafx/css/Size;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    sget-object v6, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 2589
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    new-instance v2, Lcom/sun/javafx/css/Size;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sget-object v6, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3843
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 126
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/parser/CSSParser;->properties:Ljava/util/Map;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/css/parser/CSSParser;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/css/parser/CSSParser;)Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfInlineStyle:Ljavafx/css/Styleable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/css/parser/CSSParser;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/parser/CSSParser;->stylesheetAsText:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private blurType(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/effect/BlurType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 1457
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 1436
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1437
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1438
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1439
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1440
    :cond_1
    const-string v5, "Expected \'gaussian\', \'one-pass-box\', \'two-pass-box\', or \'three-pass-box\'"

    move-object v2, v5

    .line 1441
    .local v2, "msg":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'gaussian\', \'one-pass-box\', \'two-pass-box\', or \'three-pass-box\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1443
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 1444
    .local v2, "blurStr":Ljava/lang/String;
    sget-object v5, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    move-object v3, v5

    .line 1445
    .local v3, "blurType":Ljavafx/scene/effect/BlurType;
    const-string v5, "gaussian"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1446
    sget-object v5, Ljavafx/scene/effect/BlurType;->GAUSSIAN:Ljavafx/scene/effect/BlurType;

    move-object v3, v5

    .line 1457
    :goto_1
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/effect/BlurType;->name()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-class v10, Ljavafx/scene/effect/BlurType;

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    goto :goto_0

    .line 1447
    :cond_3
    const-string v5, "one-pass-box"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1448
    sget-object v5, Ljavafx/scene/effect/BlurType;->ONE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    move-object v3, v5

    goto :goto_1

    .line 1449
    :cond_4
    const-string v5, "two-pass-box"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1450
    sget-object v5, Ljavafx/scene/effect/BlurType;->TWO_PASS_BOX:Ljavafx/scene/effect/BlurType;

    move-object v3, v5

    goto :goto_1

    .line 1451
    :cond_5
    const-string v5, "three-pass-box"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1452
    sget-object v5, Ljavafx/scene/effect/BlurType;->THREE_PASS_BOX:Ljavafx/scene/effect/BlurType;

    move-object v3, v5

    goto :goto_1

    .line 1454
    :cond_6
    const-string v5, "Expected \'gaussian\', \'one-pass-box\', \'two-pass-box\', or \'three-pass-box\'"

    move-object v4, v5

    .line 1455
    .local v4, "msg":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'gaussian\', \'one-pass-box\', \'two-pass-box\', or \'three-pass-box\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private borderStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljavafx/css/ParsedValue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3332
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3333
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3334
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Expected \'<border-style>\'"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3336
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 3338
    .local v2, "text":Ljava/lang/String;
    const-string v3, "none"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3339
    sget-object v3, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->NONE:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v3

    .line 3365
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 3340
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_2
    const-string v3, "hidden"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3343
    sget-object v3, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->NONE:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v3

    goto :goto_0

    .line 3344
    :cond_3
    const-string v3, "dotted"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3345
    sget-object v3, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DOTTED:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v3

    goto :goto_0

    .line 3346
    :cond_4
    const-string v3, "dashed"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3347
    sget-object v3, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DASHED:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v3

    goto :goto_0

    .line 3348
    :cond_5
    const-string v3, "solid"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3349
    sget-object v3, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->SOLID:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v3

    goto :goto_0

    .line 3350
    :cond_6
    const-string v3, "double"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3351
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Unsupported <border-style> \'double\'"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3365
    :goto_1
    sget-object v3, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->SOLID:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v3

    goto :goto_0

    .line 3352
    :cond_7
    const-string v3, "groove"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3353
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Unsupported <border-style> \'groove\'"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_1

    .line 3354
    :cond_8
    const-string v3, "ridge"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3355
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Unsupported <border-style> \'ridge\'"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_1

    .line 3356
    :cond_9
    const-string v3, "inset"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3357
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Unsupported <border-style> \'inset\'"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_1

    .line 3358
    :cond_a
    const-string v3, "outset"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3359
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Unsupported <border-style> \'outset\'"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_1

    .line 3361
    :cond_b
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported <border-style> \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private clamp(DDD)D
    .locals 13

    .prologue
    .line 533
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-wide v2, p1

    .local v2, "min":D
    move-wide/from16 v4, p3

    .local v4, "val":D
    move-wide/from16 v6, p5

    .local v6, "max":D
    move-wide v8, v4

    move-wide v10, v2

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    move-wide v8, v2

    move-wide v1, v8

    .line 535
    .end local v1    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-wide v1

    .line 534
    .restart local v1    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-wide v8, v6

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    move-wide v8, v6

    move-wide v1, v8

    goto :goto_0

    .line 535
    :cond_1
    move-wide v8, v4

    move-wide v1, v8

    goto :goto_0
.end method

.method private colorValueOfString(Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljavafx/scene/paint/Color;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v7, v1

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v1

    const-string v8, "0x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 501
    :cond_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v2, v7

    .line 502
    .local v2, "a":D
    move-object v7, v1

    move-object v4, v7

    .line 503
    .local v4, "c":Ljava/lang/String;
    move-object v7, v1

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 505
    .local v5, "prefixLength":I
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v6, v7

    .line 507
    .local v6, "len":I
    move v7, v6

    move v8, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 508
    move-object v7, v4

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    move-wide v2, v7

    .line 509
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 515
    :cond_1
    :goto_1
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-wide v10, v2

    invoke-static {v9, v10, v11}, Ljavafx/scene/paint/Color;->web(Ljava/lang/String;D)Ljavafx/scene/paint/Color;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v7

    .line 525
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .end local v2    # "a":D
    .end local v4    # "c":Ljava/lang/String;
    .end local v5    # "prefixLength":I
    .end local v6    # "len":I
    :goto_2
    return-object v0

    .line 503
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .restart local v2    # "a":D
    .restart local v4    # "c":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    .line 510
    .restart local v5    # "prefixLength":I
    .restart local v6    # "len":I
    :cond_3
    move v7, v6

    move v8, v5

    sub-int/2addr v7, v8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 511
    move-object v7, v4

    move v8, v6

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    move-wide v2, v7

    .line 512
    move-object v7, v4

    const/4 v8, 0x0

    move v9, v6

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    goto :goto_1

    .line 519
    .end local v2    # "a":D
    .end local v4    # "c":Ljava/lang/String;
    .end local v5    # "prefixLength":I
    .end local v6    # "len":I
    :cond_4
    :try_start_0
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-static {v9}, Ljavafx/scene/paint/Color;->web(Ljava/lang/String;)Ljavafx/scene/paint/Color;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v7

    goto :goto_2

    .line 520
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 525
    :goto_3
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_2

    .line 521
    :catch_1
    move-exception v7

    move-object v2, v7

    goto :goto_3
.end method

.method private combinator(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Combinator;
    .locals 6

    .prologue
    .line 4421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    const/4 v4, 0x0

    move-object v2, v4

    .line 4425
    .local v2, "combinator":Lcom/sun/javafx/css/Combinator;
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4426
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    :goto_1
    move v3, v4

    .line 4428
    .local v3, "ttype":I
    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 4452
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_2
    return-object v0

    .line 4426
    .end local v3    # "ttype":I
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 4433
    .restart local v3    # "ttype":I
    :sswitch_0
    move-object v4, v2

    if-nez v4, :cond_1

    const-string v4, " "

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4434
    sget-object v4, Lcom/sun/javafx/css/Combinator;->DESCENDANT:Lcom/sun/javafx/css/Combinator;

    move-object v2, v4

    .line 4457
    :cond_1
    :goto_3
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/CSSLexer;->nextToken()Lcom/sun/javafx/css/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4458
    sget-object v4, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4459
    sget-object v4, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 4461
    :cond_2
    goto :goto_0

    .line 4440
    :sswitch_1
    sget-object v4, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    move-object v2, v4

    .line 4441
    goto :goto_3

    .line 4448
    :sswitch_2
    move-object v4, v2

    move-object v0, v4

    goto :goto_2

    .line 4428
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x1b -> :sswitch_1
        0x1f -> :sswitch_2
        0x21 -> :sswitch_2
        0x25 -> :sswitch_2
        0x26 -> :sswitch_2
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;
    .locals 8

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v2, v3

    .line 431
    .local v2, "error":Lcom/sun/javafx/css/CssError;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 432
    new-instance v3, Lcom/sun/javafx/css/CssError$StylesheetParsingError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/CssError$StylesheetParsingError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 438
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 433
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfInlineStyle:Ljavafx/css/Styleable;

    if-eqz v3, :cond_1

    .line 434
    new-instance v3, Lcom/sun/javafx/css/CssError$InlineStyleParsingError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfInlineStyle:Ljavafx/css/Styleable;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/CssError$InlineStyleParsingError;-><init>(Ljavafx/css/Styleable;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    .line 436
    :cond_1
    new-instance v3, Lcom/sun/javafx/css/CssError$StringParsingError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->stylesheetAsText:Ljava/lang/String;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/CssError$StringParsingError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0
.end method

.method private cycleMethod(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/paint/CycleMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1564
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v4, 0x0

    move-object v2, v4

    .line 1565
    .local v2, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    .line 1567
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1568
    .local v3, "text":Ljava/lang/String;
    const-string v4, "repeat"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1569
    sget-object v4, Ljavafx/scene/paint/CycleMethod;->REPEAT:Ljavafx/scene/paint/CycleMethod;

    move-object v2, v4

    .line 1576
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 1577
    new-instance v4, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/paint/CycleMethod;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-class v9, Ljavafx/scene/paint/CycleMethod;

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v4

    .line 1579
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_1
    return-object v0

    .line 1570
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    const-string v4, "reflect"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1571
    sget-object v4, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    move-object v2, v4

    goto :goto_0

    .line 1572
    :cond_2
    const-string v4, "no-cycle"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1573
    sget-object v4, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    move-object v2, v4

    goto :goto_0

    .line 1579
    .end local v3    # "text":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private dashStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljavafx/css/ParsedValue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    const-string v6, "Expected \'<dash-style>\'"

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3311
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    move v2, v4

    .line 3313
    .local v2, "ttype":I
    const/4 v4, 0x0

    move-object v3, v4

    .line 3314
    .local v3, "segments":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;[Ljava/lang/Number;>;"
    move v4, v2

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 3315
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->borderStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljavafx/css/ParsedValue;

    move-result-object v4

    move-object v3, v4

    .line 3322
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 3316
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    move v4, v2

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 3317
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->segments(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 3319
    :cond_2
    move-object v4, v0

    move-object v5, v1

    const-string v6, "Expected \'<dash-style>\'"

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declaration(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Declaration;
    .locals 18

    .prologue
    .line 4510
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v12, :cond_1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4511
    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v12

    :goto_0
    move v2, v12

    .line 4513
    .local v2, "ttype":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v12, :cond_0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4514
    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v12

    const/16 v13, 0xb

    if-eq v12, v13, :cond_2

    .line 4528
    :cond_0
    const/4 v12, 0x0

    move-object v0, v12

    .line 4576
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_1
    return-object v0

    .line 4511
    .end local v2    # "ttype":I
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 4531
    .restart local v2    # "ttype":I
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 4533
    .local v3, "property":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v13

    iput-object v13, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4535
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v12, :cond_3

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4536
    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v12

    const/16 v13, 0x1f

    if-eq v12, v13, :cond_5

    .line 4537
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v12

    move v4, v12

    .line 4538
    .local v4, "line":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v12

    move v5, v12

    .line 4539
    .local v5, "pos":I
    const-string v12, "Expected COLON at [{0,number,#},{1,number,#}]"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v4

    .line 4541
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move/from16 v16, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 4540
    invoke-static {v12, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 4542
    .local v6, "msg":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v6

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v12

    move-object v7, v12

    .line 4543
    .local v7, "error":Lcom/sun/javafx/css/CssError;
    sget-object v12, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v13, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v12, v13}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4544
    sget-object v12, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v13, v7

    invoke-virtual {v13}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 4546
    :cond_4
    move-object v12, v0

    move-object v13, v7

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 4547
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_1

    .line 4550
    .end local v4    # "line":I
    .end local v5    # "pos":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "error":Lcom/sun/javafx/css/CssError;
    :cond_5
    move-object v12, v0

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v13

    iput-object v13, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4552
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->expr(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v12

    move-object v4, v12

    .line 4553
    .local v4, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v12, 0x0

    move-object v5, v12

    .line 4555
    .local v5, "value":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v12, v4

    if-eqz v12, :cond_7

    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v1

    :try_start_0
    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->valueFor(Ljava/lang/String;Lcom/sun/javafx/css/parser/CSSParser$Term;Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/ParsedValueImpl;
    :try_end_0
    .catch Lcom/sun/javafx/css/parser/CSSParser$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_2
    move-object v5, v12

    .line 4569
    .line 4571
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v12

    const/16 v13, 0x27

    if-ne v12, v13, :cond_b

    const/4 v12, 0x1

    :goto_3
    move v6, v12

    .line 4572
    .local v6, "important":Z
    move v12, v6

    if-eqz v12, :cond_6

    move-object v12, v0

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v13

    iput-object v13, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4574
    :cond_6
    move-object v12, v5

    if-eqz v12, :cond_c

    new-instance v12, Lcom/sun/javafx/css/Declaration;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v3

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4575
    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v5

    move/from16 v16, v6

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/css/Declaration;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/ParsedValueImpl;Z)V

    :goto_4
    move-object v7, v12

    .line 4576
    .local v7, "decl":Lcom/sun/javafx/css/Declaration;
    move-object v12, v7

    move-object v0, v12

    goto/16 :goto_1

    .line 4555
    .end local v6    # "important":Z
    .end local v7    # "decl":Lcom/sun/javafx/css/Declaration;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 4556
    :catch_0
    move-exception v12

    move-object v6, v12

    .line 4557
    .local v6, "re":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->access$300(Lcom/sun/javafx/css/parser/CSSParser$ParseException;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v12

    move-object v7, v12

    .line 4558
    .local v7, "badToken":Lcom/sun/javafx/css/parser/Token;
    move-object v12, v7

    if-eqz v12, :cond_9

    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v12

    :goto_5
    move v8, v12

    .line 4559
    .local v8, "line":I
    move-object v12, v7

    if-eqz v12, :cond_a

    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v12

    :goto_6
    move v9, v12

    .line 4560
    .local v9, "pos":I
    const-string v12, "{2} while parsing \'\'{3}\'\' at [{0,number,#},{1,number,#}]"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v8

    .line 4562
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move/from16 v16, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x2

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x3

    move-object/from16 v16, v3

    aput-object v16, v14, v15

    .line 4561
    invoke-static {v12, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 4563
    .local v10, "msg":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v10

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v12

    move-object v11, v12

    .line 4564
    .local v11, "error":Lcom/sun/javafx/css/CssError;
    sget-object v12, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v13, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v12, v13}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4565
    sget-object v12, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v13, v11

    invoke-virtual {v13}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 4567
    :cond_8
    move-object v12, v0

    move-object v13, v11

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 4568
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_1

    .line 4558
    .end local v8    # "line":I
    .end local v9    # "pos":I
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "error":Lcom/sun/javafx/css/CssError;
    :cond_9
    const/4 v12, -0x1

    goto :goto_5

    .line 4559
    .restart local v8    # "line":I
    :cond_a
    const/4 v12, -0x1

    goto :goto_6

    .line 4571
    .end local v6    # "re":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    .end local v7    # "badToken":Lcom/sun/javafx/css/parser/Token;
    .end local v8    # "line":I
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4575
    .local v6, "important":Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4
.end method

.method private declarations(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSLexer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Declaration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4466
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 4470
    .local v2, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    :goto_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->declaration(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 4471
    .local v3, "decl":Lcom/sun/javafx/css/Declaration;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 4472
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 4490
    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4491
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_3

    .line 4492
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    goto :goto_1

    .line 4475
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4476
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4477
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4478
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4479
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    goto :goto_2

    .line 4483
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4484
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_0

    .line 4485
    move-object v4, v2

    move-object v0, v4

    .line 4505
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_3
    return-object v0

    .line 4497
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4498
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_4

    .line 4499
    goto :goto_0

    .line 4505
    :cond_4
    move-object v4, v2

    move-object v0, v4

    goto :goto_3
.end method

.method private derive(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1098
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v2, v8

    .line 1099
    .local v2, "fn":Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_0

    const-string v8, "derive"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1100
    :cond_0
    const-string v8, "Expected \'derive\'"

    move-object v3, v8

    .line 1101
    .local v3, "msg":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'derive\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1104
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    move-object v8, v1

    move-object v3, v8

    .line 1105
    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v3, v9

    if-nez v8, :cond_2

    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'<color>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1107
    :cond_2
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseColor(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v4, v8

    .line 1109
    .local v4, "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    move-object v8, v3

    move-object v5, v8

    .line 1110
    .local v5, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v3, v9

    if-nez v8, :cond_3

    move-object v8, v0

    move-object v9, v5

    const-string v10, "Expected \'<percent\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1112
    :cond_3
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v6, v8

    .line 1114
    .local v6, "brightness":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    move-object v11, v4

    aput-object v11, v9, v10

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    move-object v11, v6

    aput-object v11, v9, v10

    move-object v7, v8

    .line 1115
    .local v7, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    invoke-static {}, Lcom/sun/javafx/css/parser/DeriveColorConverter;->getInstance()Lcom/sun/javafx/css/parser/DeriveColorConverter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 1098
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    .end local v5    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "brightness":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v7    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private dropshadow(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1515
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v12, :cond_7

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v12

    :goto_0
    move-object v2, v12

    .line 1516
    .local v2, "fn":Ljava/lang/String;
    const-string v12, "dropshadow"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0xa

    invoke-virtual/range {v12 .. v17}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1517
    const-string v12, "Expected \'dropshadow\'"

    move-object v3, v12

    .line 1518
    .local v3, "msg":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v1

    const-string v14, "Expected \'dropshadow\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1523
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    if-nez v12, :cond_1

    move-object v12, v0

    move-object v13, v1

    const-string v14, "Expected \'<blur-type>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1524
    :cond_1
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->blurType(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v4, v12

    .line 1526
    .local v4, "blurVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/effect/BlurType;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1527
    .local v5, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_2

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<color>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1529
    :cond_2
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseColor(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v6, v12

    .line 1531
    .local v6, "colorVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1532
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_3

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1534
    :cond_3
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v7, v12

    .line 1536
    .local v7, "radiusVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1537
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_4

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1539
    :cond_4
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v8, v12

    .line 1541
    .local v8, "spreadVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1542
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_5

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1544
    :cond_5
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v9, v12

    .line 1546
    .local v9, "offsetXVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1547
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_6

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1549
    :cond_6
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v10, v12

    .line 1551
    .local v10, "offsetYVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v12, 0x6

    new-array v12, v12, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v4

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    move-object v15, v6

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x2

    move-object v15, v7

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x3

    move-object v15, v8

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x4

    move-object v15, v9

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x5

    move-object v15, v10

    aput-object v15, v13, v14

    move-object v11, v12

    .line 1559
    .local v11, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v12, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v11

    invoke-static {}, Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;->getInstance()Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v12

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 1515
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "blurVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/effect/BlurType;>;"
    .end local v5    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "colorVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    .end local v7    # "radiusVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v8    # "spreadVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v9    # "offsetXVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v10    # "offsetYVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v2, p2

    .local v2, "msg":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    :goto_0
    move-object v3, v5

    .line 451
    .local v3, "token":Lcom/sun/javafx/css/parser/Token;
    new-instance v5, Lcom/sun/javafx/css/parser/CSSParser$ParseException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/parser/Token;Lcom/sun/javafx/css/parser/CSSParser;)V

    move-object v4, v5

    .line 452
    .local v4, "pe":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    move-object v5, v0

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 453
    move-object v5, v4

    throw v5

    .line 450
    .end local v3    # "token":Lcom/sun/javafx/css/parser/Token;
    .end local v4    # "pe":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private expr(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;
    .locals 10

    .prologue
    .line 4581
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->term(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v5

    move-object v2, v5

    .line 4582
    .local v2, "expr":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v2

    move-object v3, v5

    .line 4587
    .local v3, "current":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4589
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v5

    :goto_1
    move v4, v5

    .line 4591
    .local v4, "ttype":I
    move v5, v4

    if-nez v5, :cond_1

    .line 4592
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->skipExpr(Lcom/sun/javafx/css/parser/CSSLexer;)V

    .line 4593
    const/4 v5, 0x0

    move-object v0, v5

    .line 4598
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_2
    return-object v0

    .line 4589
    .end local v4    # "ttype":I
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 4594
    .restart local v4    # "ttype":I
    :cond_1
    move v5, v4

    const/16 v6, 0x1e

    if-eq v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0x27

    if-eq v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0x1d

    if-eq v5, v6, :cond_2

    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 4598
    :cond_2
    move-object v5, v2

    move-object v0, v5

    goto :goto_2

    .line 4599
    :cond_3
    move v5, v4

    const/16 v6, 0x24

    if-ne v5, v6, :cond_4

    .line 4603
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4604
    move-object v5, v3

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->term(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v8, v5

    move-object v9, v6

    move-object v5, v9

    move-object v6, v8

    move-object v7, v9

    iput-object v7, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v5

    .line 4609
    :goto_3
    goto :goto_0

    .line 4606
    :cond_4
    move-object v5, v3

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->term(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v8, v5

    move-object v9, v6

    move-object v5, v9

    move-object v6, v8

    move-object v7, v9

    iput-object v7, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v5

    goto :goto_3
.end method

.method private fontFace(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/FontFace;
    .locals 25

    .prologue
    .line 4007
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v3, p1

    .local v3, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    new-instance v17, Ljava/util/HashMap;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, v17

    .line 4008
    .local v4, "descriptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v17

    .line 4010
    .local v5, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/FontFace$FontFaceSrc;>;"
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4011
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 4012
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    .line 4014
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4016
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4018
    const-string v17, "src"

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 4020
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 4021
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 4022
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x1d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 4023
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 4025
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 4027
    move-object/from16 v17, v5

    new-instance v18, Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    sget-object v20, Lcom/sun/javafx/css/FontFace$FontFaceSrcType;->REFERENCE:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;-><init>(Lcom/sun/javafx/css/FontFace$FontFaceSrcType;Ljava/lang/String;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 4136
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    goto/16 :goto_0

    .line 4029
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x2b

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 4032
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v17, v0

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x0

    new-instance v20, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v22, v0

    .line 4033
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v20, v18, v19

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const/16 v19, 0x1

    new-instance v20, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v20, v18, v19

    move-object/from16 v7, v17

    .line 4036
    .local v7, "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v17, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v7

    .line 4037
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v8, v17

    .line 4038
    .local v8, "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    move-object/from16 v17, v8

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v9, v17

    .line 4040
    .local v9, "urlStr":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v10, v17

    .line 4042
    .local v10, "url":Ljava/net/URL;
    :try_start_0
    new-instance v17, Ljava/net/URI;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v9

    invoke-direct/range {v18 .. v19}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v17

    .line 4043
    .local v11, "fontUri":Ljava/net/URI;
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    move-object/from16 v10, v17

    .line 4064
    .line 4066
    .end local v11    # "fontUri":Ljava/net/URI;
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v11, v17

    .line 4068
    .local v11, "format":Ljava/lang/String;
    :goto_2
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4069
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    :goto_3
    move/from16 v12, v17

    .line 4070
    .local v12, "ttype":I
    move/from16 v17, v12

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 4071
    const-string v17, "format("

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 4072
    goto :goto_2

    .line 4044
    .end local v11    # "format":Ljava/lang/String;
    .end local v12    # "ttype":I
    :catch_0
    move-exception v17

    :goto_4
    move-object/from16 v11, v17

    .line 4046
    .local v11, "malf":Ljava/lang/Exception;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v17

    move/from16 v12, v17

    .line 4047
    .local v12, "line":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v17

    move/from16 v13, v17

    .line 4048
    .local v13, "pos":I
    const-string v17, "Could not resolve @font-face url [{2}] at [{0,number,#},{1,number,#}]"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    move/from16 v21, v12

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x1

    move/from16 v21, v13

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x2

    move-object/from16 v21, v9

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v18}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 4049
    .local v14, "msg":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v17

    move-object/from16 v15, v17

    .line 4050
    .local v15, "error":Lcom/sun/javafx/css/CssError;
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v18, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 4051
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 4053
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 4056
    :goto_5
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4057
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    move/from16 v16, v17

    .line 4058
    .local v16, "ttype":I
    move/from16 v17, v16

    const/16 v18, 0x1d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move/from16 v17, v16

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 4060
    :cond_4
    const/16 v17, 0x0

    move-object/from16 v2, v17

    .line 4161
    .end local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v8    # "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    .end local v9    # "urlStr":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "malf":Ljava/lang/Exception;
    .end local v12    # "line":I
    .end local v13    # "pos":I
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "error":Lcom/sun/javafx/css/CssError;
    .end local v16    # "ttype":I
    :goto_6
    return-object v2

    .line 4062
    .restart local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v8    # "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    .restart local v9    # "urlStr":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "malf":Ljava/lang/Exception;
    .restart local v12    # "line":I
    .restart local v13    # "pos":I
    .restart local v14    # "msg":Ljava/lang/String;
    .restart local v15    # "error":Lcom/sun/javafx/css/CssError;
    .restart local v16    # "ttype":I
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4063
    goto :goto_5

    .line 4069
    .end local v12    # "line":I
    .end local v13    # "pos":I
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "error":Lcom/sun/javafx/css/CssError;
    .end local v16    # "ttype":I
    .local v11, "format":Ljava/lang/String;
    :cond_6
    const/16 v17, -0x1

    goto/16 :goto_3

    .line 4076
    .local v12, "ttype":I
    :cond_7
    move/from16 v17, v12

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move/from16 v17, v12

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 4079
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 4085
    goto/16 :goto_2

    .line 4080
    :cond_9
    move/from16 v17, v12

    const/16 v18, 0x23

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 4081
    goto/16 :goto_2

    .line 4086
    :cond_a
    move-object/from16 v17, v5

    new-instance v18, Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    sget-object v20, Lcom/sun/javafx/css/FontFace$FontFaceSrcType;->URL:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v11

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;-><init>(Lcom/sun/javafx/css/FontFace$FontFaceSrcType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 4088
    goto/16 :goto_1

    .end local v7    # "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v8    # "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    .end local v9    # "urlStr":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .end local v11    # "format":Ljava/lang/String;
    .end local v12    # "ttype":I
    :cond_b
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 4089
    const-string v17, "local("

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 4091
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4093
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v17

    .line 4095
    .local v7, "localSb":Ljava/lang/StringBuilder;
    :goto_7
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x23

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 4096
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 4097
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4101
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    goto :goto_7

    .line 4103
    :cond_c
    const/16 v17, 0x0

    move/from16 v8, v17

    .local v8, "start":I
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v9, v17

    .line 4104
    .local v9, "end":I
    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x27

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x22

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 4105
    :cond_e
    move-object/from16 v17, v7

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x27

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v17, v7

    move/from16 v18, v9

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x22

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    :cond_f
    add-int/lit8 v9, v9, -0x1

    .line 4106
    :cond_10
    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 4107
    .local v10, "local":Ljava/lang/String;
    move-object/from16 v17, v5

    new-instance v18, Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    sget-object v20, Lcom/sun/javafx/css/FontFace$FontFaceSrcType;->LOCAL:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    move-object/from16 v21, v10

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;-><init>(Lcom/sun/javafx/css/FontFace$FontFaceSrcType;Ljava/lang/String;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 4108
    goto/16 :goto_1

    .line 4110
    .end local v7    # "localSb":Ljava/lang/StringBuilder;
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "local":Ljava/lang/String;
    :cond_11
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v17

    move/from16 v7, v17

    .line 4111
    .local v7, "line":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v17

    move/from16 v8, v17

    .line 4112
    .local v8, "pos":I
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unknown @font-face src type ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")] at [{0,number,#},{1,number,#}]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    move/from16 v21, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x1

    move/from16 v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v18}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 4113
    .local v9, "msg":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v17

    move-object/from16 v10, v17

    .line 4114
    .local v10, "error":Lcom/sun/javafx/css/CssError;
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v18, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 4115
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 4117
    :cond_12
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 4119
    goto/16 :goto_1

    .line 4120
    .end local v7    # "line":I
    .end local v8    # "pos":I
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "error":Lcom/sun/javafx/css/CssError;
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x24

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    goto/16 :goto_1

    .line 4124
    :cond_14
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v17

    move/from16 v7, v17

    .line 4125
    .restart local v7    # "line":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v17

    move/from16 v8, v17

    .line 4126
    .restart local v8    # "pos":I
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected TOKEN ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] at [{0,number,#},{1,number,#}]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    move/from16 v21, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x1

    move/from16 v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v18}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 4127
    .restart local v9    # "msg":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v17

    move-object/from16 v10, v17

    .line 4128
    .restart local v10    # "error":Lcom/sun/javafx/css/CssError;
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v18, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 4129
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 4131
    :cond_15
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    goto/16 :goto_1

    .line 4139
    .end local v7    # "line":I
    .end local v8    # "pos":I
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "error":Lcom/sun/javafx/css/CssError;
    :cond_16
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v17

    .line 4141
    .local v7, "descriptorVal":Ljava/lang/StringBuilder;
    :goto_8
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 4142
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    .line 4143
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4147
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    goto :goto_8

    .line 4149
    :cond_17
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 4154
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "descriptorVal":Ljava/lang/StringBuilder;
    :cond_18
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 4155
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x1d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_19

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 4156
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 4157
    .line 4161
    :cond_19
    new-instance v17, Lcom/sun/javafx/css/FontFace;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/FontFace;-><init>(Ljava/util/Map;Ljava/util/List;)V

    move-object/from16 v2, v17

    goto/16 :goto_6

    .line 4044
    .restart local v6    # "key":Ljava/lang/String;
    .local v7, "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .local v8, "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    .local v9, "urlStr":Ljava/lang/String;
    .local v10, "url":Ljava/net/URL;
    :catch_1
    move-exception v17

    goto/16 :goto_4
.end method

.method private formatDeprecatedMessage(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v2, p2

    .local v2, "syntax":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Using deprecated syntax for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 482
    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 483
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 484
    move-object v4, v3

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    .line 485
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 487
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    .line 488
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 489
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    .line 490
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 492
    :cond_0
    move-object v4, v3

    const-string v5, ". Refer to the CSS Reference Guide."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 493
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private functionalPseudo(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 4392
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 4396
    .local v2, "pclass":Ljava/lang/StringBuilder;
    :goto_0
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4398
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 4412
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/css/parser/Token;->INVALID_TOKEN:Lcom/sun/javafx/css/parser/Token;

    iput-object v4, v3, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4413
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_1
    return-object v0

    .line 4404
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :sswitch_0
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4405
    goto :goto_0

    .line 4408
    :sswitch_1
    move-object v3, v2

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4409
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 4398
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0x23 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getInstance()Lcom/sun/javafx/css/parser/CSSParser;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/sun/javafx/css/parser/CSSParser;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/css/parser/CSSParser;-><init>()V

    return-object v0
.end method

.method private getKeyword(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3192
    invoke-virtual {v2}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3193
    invoke-virtual {v2}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3194
    invoke-virtual {v2}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3196
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v2}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 3198
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private handleImport(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Stylesheet;
    .locals 17

    .prologue
    .line 4165
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v9, v0

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4167
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 4168
    :cond_0
    const/4 v9, 0x0

    move-object v0, v9

    .line 4208
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 4171
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    move v2, v9

    .line 4173
    .local v2, "ttype":I
    const/4 v9, 0x0

    move-object v3, v9

    .line 4174
    .local v3, "fname":Ljava/lang/String;
    move v9, v2

    const/16 v10, 0xa

    if-eq v9, v10, :cond_2

    move v9, v2

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_3

    .line 4175
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 4178
    :cond_3
    const/4 v9, 0x0

    move-object v4, v9

    .line 4179
    .local v4, "importedStylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    move-object v5, v9

    .line 4181
    .local v5, "_sourceOfStylesheet":Ljava/lang/String;
    move-object v9, v3

    if-eqz v9, :cond_4

    .line 4183
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    new-instance v12, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    .line 4184
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v12, v10, v11

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x1

    new-instance v12, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v12, v10, v11

    move-object v6, v9

    .line 4187
    .local v6, "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v6

    .line 4188
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v7, v9

    .line 4190
    .local v7, "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v8, v9

    .line 4191
    .local v8, "urlString":Ljava/lang/String;
    move-object v9, v8

    invoke-static {v9}, Lcom/sun/javafx/css/StyleManager;->loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v9

    move-object v4, v9

    .line 4197
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    .line 4199
    .end local v6    # "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v7    # "parsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    .end local v8    # "urlString":Ljava/lang/String;
    :cond_4
    move-object v9, v4

    if-nez v9, :cond_6

    .line 4200
    const-string v9, "Could not import {0}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    .line 4201
    invoke-static {v9, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 4202
    .local v6, "msg":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v9

    move-object v7, v9

    .line 4203
    .local v7, "error":Lcom/sun/javafx/css/CssError;
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v10, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4204
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 4206
    :cond_5
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 4208
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "error":Lcom/sun/javafx/css/CssError;
    :cond_6
    move-object v9, v4

    move-object v0, v9

    goto/16 :goto_0
.end method

.method private hsb(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1049
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v4, p1

    .local v4, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v23

    :goto_0
    move-object/from16 v5, v23

    .line 1050
    .local v5, "fn":Ljava/lang/String;
    move-object/from16 v23, v5

    if-eqz v23, :cond_0

    const-string v23, "hsb"

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v26, v5

    const/16 v27, 0x0

    const/16 v28, 0x3

    invoke-virtual/range {v23 .. v28}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v23

    if-nez v23, :cond_1

    .line 1051
    :cond_0
    const-string v23, "Expected \'hsb\' or \'hsba\'"

    move-object/from16 v6, v23

    .line 1052
    .local v6, "msg":Ljava/lang/String;
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    const-string v25, "Expected \'hsb\' or \'hsba\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1055
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    move-object/from16 v23, v4

    move-object/from16 v6, v23

    .line 1058
    .local v6, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v6, v24

    if-nez v23, :cond_2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    const-string v25, "Expected \'<number>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1059
    :cond_2
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v7, v24

    .local v7, "htok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_3

    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    :cond_3
    move-object/from16 v23, v3

    move-object/from16 v24, v6

    const-string v25, "Expected \'<number>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1061
    :cond_4
    move-object/from16 v23, v6

    move-object/from16 v4, v23

    .line 1063
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v6, v24

    if-nez v23, :cond_5

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    const-string v25, "Expected \'<percent>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1064
    :cond_5
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v8, v24

    .local v8, "stok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_6

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    :cond_6
    move-object/from16 v23, v3

    move-object/from16 v24, v6

    const-string v25, "Expected \'<percent>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1066
    :cond_7
    move-object/from16 v23, v6

    move-object/from16 v4, v23

    .line 1068
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v6, v24

    if-nez v23, :cond_8

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    const-string v25, "Expected \'<percent>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1069
    :cond_8
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v9, v24

    .local v9, "btok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_9

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    :cond_9
    move-object/from16 v23, v3

    move-object/from16 v24, v6

    const-string v25, "Expected \'<percent>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1071
    :cond_a
    move-object/from16 v23, v6

    move-object/from16 v4, v23

    .line 1073
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v6, v24

    if-eqz v23, :cond_e

    .line 1074
    move-object/from16 v23, v6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v10, v24

    .local v10, "atok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_b

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    :cond_b
    move-object/from16 v23, v3

    move-object/from16 v24, v6

    const-string v25, "Expected \'<number>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1079
    :cond_c
    :goto_1
    move-object/from16 v23, v3

    move-object/from16 v24, v7

    invoke-direct/range {v23 .. v24}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v23

    move-object/from16 v11, v23

    .line 1080
    .local v11, "hval":Lcom/sun/javafx/css/Size;
    move-object/from16 v23, v3

    move-object/from16 v24, v8

    invoke-direct/range {v23 .. v24}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v23

    move-object/from16 v12, v23

    .line 1081
    .local v12, "sval":Lcom/sun/javafx/css/Size;
    move-object/from16 v23, v3

    move-object/from16 v24, v9

    invoke-direct/range {v23 .. v24}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v23

    move-object/from16 v13, v23

    .line 1083
    .local v13, "bval":Lcom/sun/javafx/css/Size;
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v23

    move-wide/from16 v14, v23

    .line 1084
    .local v14, "hue":D
    move-object/from16 v23, v3

    const-wide/16 v24, 0x0

    move-object/from16 v26, v12

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v16, v23

    .line 1085
    .local v16, "saturation":D
    move-object/from16 v23, v3

    const-wide/16 v24, 0x0

    move-object/from16 v26, v13

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v18, v23

    .line 1087
    .local v18, "brightness":D
    move-object/from16 v23, v10

    if-eqz v23, :cond_f

    move-object/from16 v23, v3

    move-object/from16 v24, v10

    invoke-direct/range {v23 .. v24}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v23

    :goto_2
    move-object/from16 v20, v23

    .line 1088
    .local v20, "aval":Lcom/sun/javafx/css/Size;
    move-object/from16 v23, v20

    if-eqz v23, :cond_10

    move-object/from16 v23, v3

    const-wide/16 v24, 0x0

    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    :goto_3
    move-wide/from16 v21, v23

    .line 1090
    .local v21, "opacity":D
    new-instance v23, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-wide/from16 v25, v14

    move-wide/from16 v27, v16

    move-wide/from16 v29, v18

    move-wide/from16 v31, v21

    invoke-static/range {v25 .. v32}, Ljavafx/scene/paint/Color;->hsb(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v25

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v3, v23

    .end local v3    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v3

    .line 1049
    .end local v5    # "fn":Ljava/lang/String;
    .end local v6    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v7    # "htok":Lcom/sun/javafx/css/parser/Token;
    .end local v8    # "stok":Lcom/sun/javafx/css/parser/Token;
    .end local v9    # "btok":Lcom/sun/javafx/css/parser/Token;
    .end local v10    # "atok":Lcom/sun/javafx/css/parser/Token;
    .end local v11    # "hval":Lcom/sun/javafx/css/Size;
    .end local v12    # "sval":Lcom/sun/javafx/css/Size;
    .end local v13    # "bval":Lcom/sun/javafx/css/Size;
    .end local v14    # "hue":D
    .end local v16    # "saturation":D
    .end local v18    # "brightness":D
    .end local v20    # "aval":Lcom/sun/javafx/css/Size;
    .end local v21    # "opacity":D
    .restart local v3    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1076
    .restart local v5    # "fn":Ljava/lang/String;
    .restart local v6    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v7    # "htok":Lcom/sun/javafx/css/parser/Token;
    .restart local v8    # "stok":Lcom/sun/javafx/css/parser/Token;
    .restart local v9    # "btok":Lcom/sun/javafx/css/parser/Token;
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v10, v23

    .restart local v10    # "atok":Lcom/sun/javafx/css/parser/Token;
    goto/16 :goto_1

    .line 1087
    .restart local v11    # "hval":Lcom/sun/javafx/css/Size;
    .restart local v12    # "sval":Lcom/sun/javafx/css/Size;
    .restart local v13    # "bval":Lcom/sun/javafx/css/Size;
    .restart local v14    # "hue":D
    .restart local v16    # "saturation":D
    .restart local v18    # "brightness":D
    :cond_f
    const/16 v23, 0x0

    goto :goto_2

    .line 1088
    .restart local v20    # "aval":Lcom/sun/javafx/css/Size;
    :cond_10
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    goto :goto_3
.end method

.method private innershadow(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1464
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v12, :cond_7

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v12

    :goto_0
    move-object v2, v12

    .line 1465
    .local v2, "fn":Ljava/lang/String;
    const-string v12, "innershadow"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0xb

    invoke-virtual/range {v12 .. v17}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1466
    const-string v12, "Expected \'innershadow\'"

    move-object v3, v12

    .line 1467
    .local v3, "msg":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v1

    const-string v14, "Expected \'innershadow\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1472
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    if-nez v12, :cond_1

    move-object v12, v0

    move-object v13, v1

    const-string v14, "Expected \'<blur-type>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1473
    :cond_1
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->blurType(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v4, v12

    .line 1475
    .local v4, "blurVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/effect/BlurType;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1476
    .local v5, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_2

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<color>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1478
    :cond_2
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseColor(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v6, v12

    .line 1480
    .local v6, "colorVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1481
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_3

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1483
    :cond_3
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v7, v12

    .line 1485
    .local v7, "radiusVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1486
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_4

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1488
    :cond_4
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v8, v12

    .line 1490
    .local v8, "chokeVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1491
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_5

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1493
    :cond_5
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v9, v12

    .line 1495
    .local v9, "offsetXVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v12, v3

    move-object v5, v12

    .line 1496
    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v3, v13

    if-nez v12, :cond_6

    move-object v12, v0

    move-object v13, v5

    const-string v14, "Expected \'<number>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1498
    :cond_6
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v10, v12

    .line 1500
    .local v10, "offsetYVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v12, 0x6

    new-array v12, v12, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v4

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    move-object v15, v6

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x2

    move-object v15, v7

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x3

    move-object v15, v8

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x4

    move-object v15, v9

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x5

    move-object v15, v10

    aput-object v15, v13, v14

    move-object v11, v12

    .line 1508
    .local v11, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v12, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v11

    invoke-static {}, Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;->getInstance()Lcom/sun/javafx/css/converters/EffectConverter$InnerShadowConverter;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v12

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 1464
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "blurVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/effect/BlurType;>;"
    .end local v5    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "colorVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    .end local v7    # "radiusVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v8    # "chokeVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v9    # "offsetXVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v10    # "offsetYVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private static isPositionKeyWord(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 2593
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    const-string v1, "center"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "top"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bottom"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "left"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "right"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSize(Lcom/sun/javafx/css/parser/Token;)Z
    .locals 5

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    move v2, v3

    .line 542
    .local v2, "ttype":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 559
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_1
    return v0

    .line 557
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :pswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 559
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ladder(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1122
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v11, :cond_d

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v11}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v11

    :goto_0
    move-object v2, v11

    .line 1123
    .local v2, "fn":Ljava/lang/String;
    move-object v11, v2

    if-eqz v11, :cond_0

    const-string v11, "ladder"

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x6

    invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1124
    :cond_0
    const-string v11, "Expected \'ladder\'"

    move-object v3, v11

    .line 1125
    .local v3, "msg":Ljava/lang/String;
    move-object v11, v0

    move-object v12, v1

    const-string v13, "Expected \'ladder\'"

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1128
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    sget-object v11, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v12, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1129
    sget-object v11, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v12, v0

    move-object v13, v1

    const-string v14, "ladder"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->formatDeprecatedMessage(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1132
    :cond_2
    move-object v11, v1

    move-object v3, v11

    .line 1134
    .local v3, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v3, v12

    if-nez v11, :cond_3

    move-object v11, v0

    move-object v12, v1

    const-string v13, "Expected \'<color>\'"

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1135
    :cond_3
    move-object v11, v0

    move-object v12, v3

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v11

    move-object v4, v11

    .line 1137
    .local v4, "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    move-object v11, v3

    move-object v5, v11

    .line 1139
    .local v5, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v3, v12

    if-nez v11, :cond_4

    move-object v11, v0

    move-object v12, v5

    const-string v13, "Expected \'stops\'"

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1140
    :cond_4
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v11, :cond_5

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1141
    invoke-virtual {v11}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v11

    const/16 v12, 0xb

    if-ne v11, v12, :cond_5

    const-string v11, "stops"

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1142
    invoke-virtual {v12}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    move-object v11, v0

    move-object v12, v3

    const-string v13, "Expected \'stops\'"

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1144
    :cond_6
    move-object v11, v3

    move-object v5, v11

    .line 1146
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v3, v12

    if-nez v11, :cond_7

    move-object v11, v0

    move-object v12, v5

    const-string v13, "Expected \'(<number>, <color>)\'"

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1148
    :cond_7
    const/4 v11, 0x0

    move v6, v11

    .line 1149
    .local v6, "nStops":I
    move-object v11, v3

    move-object v7, v11

    .line 1151
    .local v7, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 1153
    move-object v11, v7

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v7, v12

    if-eqz v11, :cond_9

    move-object v11, v7

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v11, :cond_9

    move-object v11, v7

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1154
    invoke-virtual {v11}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_8

    .line 1156
    :cond_9
    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v8, v11

    .line 1157
    .local v8, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v4

    aput-object v13, v11, v12

    .line 1158
    const/4 v11, 0x1

    move v9, v11

    .line 1160
    .local v9, "stopIndex":I
    :cond_a
    move-object v11, v0

    move-object v12, v3

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->stop(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v11

    move-object v10, v11

    .line 1161
    .local v10, "stop":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    move-object v11, v10

    if-eqz v11, :cond_b

    move-object v11, v8

    move v12, v9

    add-int/lit8 v9, v9, 0x1

    move-object v13, v10

    aput-object v13, v11, v12

    .line 1162
    :cond_b
    move-object v11, v3

    move-object v5, v11

    .line 1163
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v3, v12

    if-eqz v11, :cond_c

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1164
    invoke-virtual {v11}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_a

    .line 1170
    :cond_c
    move-object v11, v3

    if-eqz v11, :cond_e

    .line 1171
    move-object v11, v1

    move-object v12, v3

    iput-object v12, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 1182
    :goto_1
    new-instance v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v8

    invoke-static {}, Lcom/sun/javafx/css/parser/LadderConverter;->getInstance()Lcom/sun/javafx/css/parser/LadderConverter;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v11

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 1122
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    .end local v5    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "nStops":I
    .end local v7    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v8    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v9    # "stopIndex":I
    .end local v10    # "stop":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1178
    .restart local v2    # "fn":Ljava/lang/String;
    .restart local v3    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v4    # "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    .restart local v5    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v6    # "nStops":I
    .restart local v7    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v8    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v9    # "stopIndex":I
    .restart local v10    # "stop":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    :cond_e
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 1179
    move-object v11, v1

    move-object v12, v5

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    iput-object v12, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    goto :goto_1
.end method

.method private linearGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1585
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v3, p1

    .local v3, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v17

    :goto_0
    move-object/from16 v4, v17

    .line 1586
    .local v4, "fn":Ljava/lang/String;
    move-object/from16 v17, v4

    if-eqz v17, :cond_0

    const-string v17, "linear"

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1587
    :cond_0
    const-string v17, "Expected \'linear\'"

    move-object/from16 v5, v17

    .line 1588
    .local v5, "msg":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const-string v19, "Expected \'linear\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1591
    .end local v5    # "msg":Ljava/lang/String;
    :cond_1
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v18, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1592
    sget-object v17, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const-string v20, "linear gradient"

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->formatDeprecatedMessage(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1595
    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v5, v17

    .line 1597
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v5, v18

    if-nez v17, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const-string v19, "Expected \'(<number>, <number>)\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1599
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->point(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v17

    move-object/from16 v6, v17

    .line 1601
    .local v6, "startPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v17, v5

    move-object/from16 v7, v17

    .line 1602
    .local v7, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v5, v18

    if-nez v17, :cond_4

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    const-string v19, "Expected \'to\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1603
    :cond_4
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 1604
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const-string v17, "to"

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    .line 1605
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const-string v19, "Expected \'to\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1607
    :cond_6
    move-object/from16 v17, v5

    move-object/from16 v7, v17

    .line 1608
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v5, v18

    if-nez v17, :cond_7

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    const-string v19, "Expected \'(<number>, <number>)\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1610
    :cond_7
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->point(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v17

    move-object/from16 v8, v17

    .line 1612
    .local v8, "endPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v17, v5

    move-object/from16 v7, v17

    .line 1613
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v5, v18

    if-nez v17, :cond_8

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    const-string v19, "Expected \'stops\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1614
    :cond_8
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 1615
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const-string v17, "stops"

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    .line 1616
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    const-string v19, "Expected \'stops\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1618
    :cond_a
    move-object/from16 v17, v5

    move-object/from16 v7, v17

    .line 1619
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v5, v18

    if-nez v17, :cond_b

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    const-string v19, "Expected \'(<number>, <number>)\'"

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1621
    :cond_b
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 1622
    .local v9, "nStops":I
    move-object/from16 v17, v5

    move-object/from16 v10, v17

    .line 1624
    .local v10, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 1626
    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v10, v18

    if-eqz v17, :cond_d

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 1627
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x22

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 1629
    :cond_d
    move/from16 v17, v9

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 1630
    .local v11, "stops":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 1632
    .local v12, "stopIndex":I
    :cond_e
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->stop(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v17

    move-object/from16 v13, v17

    .line 1633
    .local v13, "stop":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    move-object/from16 v17, v13

    if-eqz v17, :cond_f

    move-object/from16 v17, v11

    move/from16 v18, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v19, v13

    aput-object v19, v17, v18

    .line 1634
    :cond_f
    move-object/from16 v17, v5

    move-object/from16 v7, v17

    .line 1635
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v0

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v5, v18

    if-eqz v17, :cond_10

    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v17, v0

    .line 1636
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v17

    const/16 v18, 0x22

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 1639
    :cond_10
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-direct/range {v17 .. v18}, Lcom/sun/javafx/css/parser/CSSParser;->cycleMethod(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v17

    move-object/from16 v13, v17

    .line 1641
    .local v13, "cycleMethod":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/paint/CycleMethod;>;"
    move-object/from16 v17, v13

    if-nez v17, :cond_13

    .line 1643
    new-instance v17, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    sget-object v19, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/paint/CycleMethod;->name()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object/from16 v23, v20

    move-object/from16 v20, v23

    move-object/from16 v21, v23

    const-class v22, Ljavafx/scene/paint/CycleMethod;

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v13, v17

    .line 1647
    move-object/from16 v17, v5

    if-eqz v17, :cond_12

    .line 1648
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 1670
    :goto_1
    const/16 v17, 0x5

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    .line 1671
    .local v14, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v17, 0x0

    move/from16 v15, v17

    .line 1672
    .local v15, "index":I
    move-object/from16 v17, v14

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v6

    if-eqz v19, :cond_14

    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget-object v19, v19, v20

    :goto_2
    aput-object v19, v17, v18

    .line 1673
    move-object/from16 v17, v14

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v6

    if-eqz v19, :cond_15

    move-object/from16 v19, v6

    const/16 v20, 0x1

    aget-object v19, v19, v20

    :goto_3
    aput-object v19, v17, v18

    .line 1674
    move-object/from16 v17, v14

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v8

    if-eqz v19, :cond_16

    move-object/from16 v19, v8

    const/16 v20, 0x0

    aget-object v19, v19, v20

    :goto_4
    aput-object v19, v17, v18

    .line 1675
    move-object/from16 v17, v14

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v8

    if-eqz v19, :cond_17

    move-object/from16 v19, v8

    const/16 v20, 0x1

    aget-object v19, v19, v20

    :goto_5
    aput-object v19, v17, v18

    .line 1676
    move-object/from16 v17, v14

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v13

    aput-object v19, v17, v18

    .line 1677
    const/16 v17, 0x0

    move/from16 v16, v17

    .local v16, "n":I
    :goto_6
    move/from16 v17, v16

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    move-object/from16 v17, v14

    move/from16 v18, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v11

    move/from16 v20, v16

    aget-object v19, v19, v20

    aput-object v19, v17, v18

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1585
    .end local v4    # "fn":Ljava/lang/String;
    .end local v5    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "startPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v7    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v8    # "endPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v9    # "nStops":I
    .end local v10    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v11    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "stopIndex":I
    .end local v13    # "cycleMethod":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/paint/CycleMethod;>;"
    .end local v14    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v15    # "index":I
    .end local v16    # "n":I
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1655
    .restart local v4    # "fn":Ljava/lang/String;
    .restart local v5    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v6    # "startPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v7    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v8    # "endPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v9    # "nStops":I
    .restart local v10    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v11    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v12    # "stopIndex":I
    .restart local v13    # "cycleMethod":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/paint/CycleMethod;>;"
    :cond_12
    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 1656
    move-object/from16 v17, v3

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    goto/16 :goto_1

    .line 1666
    :cond_13
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 1667
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    goto/16 :goto_1

    .line 1672
    .restart local v14    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v15    # "index":I
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1673
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1674
    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1675
    :cond_17
    const/16 v19, 0x0

    goto :goto_5

    .line 1678
    .restart local v16    # "n":I
    :cond_18
    new-instance v17, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v14

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v2, v17

    .end local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v2
.end method

.method private nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 691
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 687
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-object v3, v1

    move-object v2, v3

    .line 688
    .local v2, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_1
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v3, :cond_1

    .line 689
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v2, v3

    goto :goto_1

    .line 691
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v0, v3

    goto :goto_0
.end method

.method private nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;
    .locals 5

    .prologue
    .line 3848
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    const/4 v3, 0x0

    move-object v2, v3

    .line 3851
    .local v2, "token":Lcom/sun/javafx/css/parser/Token;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/CSSLexer;->nextToken()Lcom/sun/javafx/css/parser/Token;

    move-result-object v3

    move-object v2, v3

    .line 3852
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 3853
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_0

    :cond_1
    move-object v3, v2

    .line 3854
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    .line 3856
    sget-object v3, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3857
    sget-object v3, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 3860
    :cond_2
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private numberOfArgs(Lcom/sun/javafx/css/parser/CSSParser$Term;)I
    .locals 5

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 680
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return v0

    .line 674
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 675
    .local v2, "nArgs":I
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v4

    .line 676
    .local v3, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 677
    add-int/lit8 v2, v2, 0x1

    .line 678
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v4

    goto :goto_1

    .line 680
    :cond_1
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method private numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I
    .locals 5

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 667
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return v0

    .line 658
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 659
    .local v2, "nLayers":I
    move-object v4, v1

    move-object v3, v4

    .line 661
    .local v3, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 662
    :goto_1
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v4, :cond_2

    .line 663
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v4

    goto :goto_1

    .line 665
    :cond_2
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v4

    .line 666
    move-object v4, v3

    if-nez v4, :cond_1

    .line 667
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method private numberOfTerms(Lcom/sun/javafx/css/parser/CSSParser$Term;)I
    .locals 5

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 651
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return v0

    .line 645
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 646
    .local v2, "nTerms":I
    move-object v4, v1

    move-object v3, v4

    .line 648
    .local v3, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 649
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v4

    .line 650
    move-object v4, v3

    if-nez v4, :cond_1

    .line 651
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method private parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 836
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-nez v10, :cond_0

    move-object v10, v0

    move-object v11, v1

    const-string v12, "Parse error"

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 837
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v2, v10

    .line 838
    .local v2, "token":Lcom/sun/javafx/css/parser/Token;
    const/4 v10, 0x0

    move-object v3, v10

    .line 840
    .local v3, "value":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v10

    move v4, v10

    .line 841
    .local v4, "ttype":I
    move v10, v4

    packed-switch v10, :pswitch_data_0

    .line 923
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown token type: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 924
    .local v9, "msg":Ljava/lang/String;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v9

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 926
    .end local v9    # "msg":Ljava/lang/String;
    :goto_0
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_1
    return-object v0

    .line 856
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :pswitch_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-nez v10, :cond_1

    .line 857
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v2

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v5, v10

    .line 858
    .local v5, "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v10

    .line 859
    goto :goto_0

    .line 860
    .end local v5    # "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_1
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->parseSizeSeries(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v10

    move-object v5, v10

    .line 861
    .local v5, "sizeValue":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;"
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v10

    .line 863
    goto :goto_0

    .line 866
    .end local v5    # "sizeValue":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;"
    :pswitch_2
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v2

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v5, v10

    .line 867
    .local v5, "sizeValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;"
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/DurationConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v10

    .line 868
    goto :goto_0

    .line 872
    .end local v5    # "sizeValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;"
    :pswitch_3
    move v10, v4

    const/16 v11, 0xb

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_2
    move v5, v10

    .line 873
    .local v5, "isIdent":Z
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 874
    .local v6, "str":Ljava/lang/String;
    move-object v10, v6

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 875
    .local v7, "text":Ljava/lang/String;
    const-string v10, "ladder"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 876
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->ladder(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v10

    move-object v3, v10

    goto/16 :goto_0

    .line 872
    .end local v5    # "isIdent":Z
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 877
    .restart local v5    # "isIdent":Z
    .restart local v6    # "str":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    :cond_3
    const-string v10, "linear"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v10, :cond_4

    .line 879
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->linearGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v10

    move-object v3, v10

    goto/16 :goto_0

    .line 880
    :cond_4
    const-string v10, "radial"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v10, :cond_5

    .line 882
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->radialGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v10

    move-object v3, v10

    goto/16 :goto_0

    .line 883
    :cond_5
    const-string v10, "infinity"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 884
    new-instance v10, Lcom/sun/javafx/css/Size;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    sget-object v14, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    move-object v8, v10

    .line 885
    .local v8, "size":Lcom/sun/javafx/css/Size;
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v8

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v9, v10

    .line 886
    .local v9, "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v9

    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v10

    .line 887
    goto/16 :goto_0

    .end local v8    # "size":Lcom/sun/javafx/css/Size;
    .end local v9    # "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_6
    const-string v10, "indefinite"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 888
    new-instance v10, Lcom/sun/javafx/css/Size;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    sget-object v14, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    move-object v8, v10

    .line 889
    .restart local v8    # "size":Lcom/sun/javafx/css/Size;
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v8

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v9, v10

    .line 890
    .local v9, "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;"
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v9

    invoke-static {}, Lcom/sun/javafx/css/converters/DurationConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v10

    .line 891
    goto/16 :goto_0

    .end local v8    # "size":Lcom/sun/javafx/css/Size;
    .end local v9    # "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;"
    :cond_7
    const-string v10, "true"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 893
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "true"

    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v10

    goto/16 :goto_0

    .line 894
    :cond_8
    const-string v10, "false"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 896
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "false"

    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v10

    goto/16 :goto_0

    .line 899
    :cond_9
    move v10, v5

    if-eqz v10, :cond_d

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->properties:Ljava/util/Map;

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    :goto_3
    move v8, v10

    .line 900
    .local v8, "needsLookup":Z
    move v10, v8

    if-nez v10, :cond_a

    move-object v10, v0

    move-object v11, v6

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->colorValueOfString(Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v3, v11

    if-nez v10, :cond_c

    .line 906
    :cond_a
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move v12, v8

    if-eqz v12, :cond_e

    move-object v12, v7

    :goto_4
    const/4 v13, 0x0

    move v14, v5

    if-nez v14, :cond_b

    move v14, v8

    if-eqz v14, :cond_f

    :cond_b
    const/4 v14, 0x1

    :goto_5
    invoke-direct {v11, v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object v3, v10

    .line 909
    :cond_c
    goto/16 :goto_0

    .line 899
    .end local v8    # "needsLookup":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_3

    .line 906
    .restart local v8    # "needsLookup":Z
    :cond_e
    move-object v12, v6

    goto :goto_4

    :cond_f
    const/4 v14, 0x0

    goto :goto_5

    .line 911
    .end local v5    # "isIdent":Z
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "needsLookup":Z
    :pswitch_4
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 913
    .local v8, "clr":Ljava/lang/String;
    :try_start_0
    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v8

    invoke-static {v12}, Ljavafx/scene/paint/Color;->web(Ljava/lang/String;)Ljavafx/scene/paint/Color;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v10

    .line 916
    goto/16 :goto_0

    .line 914
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 915
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 917
    goto/16 :goto_0

    .line 919
    .end local v8    # "clr":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_5
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->parseFunction(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_1

    .line 921
    :pswitch_6
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->parseURI(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_1

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private parse(Lcom/sun/javafx/css/Stylesheet;Lcom/sun/javafx/css/parser/CSSLexer;)V
    .locals 15

    .prologue
    .line 3870
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object/from16 v2, p2

    .local v2, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v9, v0

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3872
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_f

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3873
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_f

    .line 3875
    move-object v9, v0

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3877
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0xb

    if-eq v9, v10, :cond_4

    .line 3880
    :cond_0
    new-instance v9, Lcom/sun/javafx/css/parser/CSSParser$ParseException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string v11, "Expected IDENT"

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    move-object v13, v0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/parser/Token;Lcom/sun/javafx/css/parser/CSSParser;)V

    move-object v3, v9

    .line 3881
    .local v3, "parseException":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 3882
    .local v4, "msg":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v9

    move-object v5, v9

    .line 3883
    .local v5, "error":Lcom/sun/javafx/css/CssError;
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v10, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3884
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 3886
    :cond_1
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 3890
    :cond_2
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/CSSLexer;->nextToken()Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3891
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3892
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_2

    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3893
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x28

    if-eq v9, v10, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3894
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x29

    if-eq v9, v10, :cond_2

    .line 3895
    goto/16 :goto_0

    .line 3898
    .end local v3    # "parseException":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "error":Lcom/sun/javafx/css/CssError;
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 3899
    .local v3, "keyword":Ljava/lang/String;
    const-string v9, "font-face"

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3900
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->fontFace(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/FontFace;

    move-result-object v9

    move-object v4, v9

    .line 3901
    .local v4, "fontFace":Lcom/sun/javafx/css/FontFace;
    move-object v9, v4

    if-eqz v9, :cond_5

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/css/Stylesheet;->getFontFaces()Ljava/util/List;

    move-result-object v9

    move-object v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 3902
    :cond_5
    move-object v9, v0

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3903
    goto/16 :goto_0

    .line 3905
    .end local v4    # "fontFace":Lcom/sun/javafx/css/FontFace;
    :cond_6
    const-string v9, "import"

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3907
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    if-nez v9, :cond_7

    .line 3908
    new-instance v9, Ljava/util/Stack;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    sput-object v9, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    .line 3911
    :cond_7
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 3913
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3915
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->handleImport(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v9

    move-object v4, v9

    .line 3917
    .local v4, "importedStylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v9, v4

    if-eqz v9, :cond_8

    .line 3918
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/css/Stylesheet;->importStylesheet(Lcom/sun/javafx/css/Stylesheet;)V

    .line 3921
    :cond_8
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    .line 3923
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3924
    const/4 v9, 0x0

    sput-object v9, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    .line 3927
    .line 3943
    .end local v4    # "importedStylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_9
    :goto_1
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/CSSLexer;->nextToken()Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3944
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_a

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3945
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x1e

    if-eq v9, v10, :cond_9

    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3946
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x28

    if-eq v9, v10, :cond_9

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3947
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x29

    if-eq v9, v10, :cond_9

    .line 3949
    goto/16 :goto_0

    .line 3929
    :cond_b
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v9

    move v4, v9

    .line 3930
    .local v4, "line":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v9

    move v5, v9

    .line 3931
    .local v5, "pos":I
    const-string v9, "Recursive @import at {2} [{0,number,#},{1,number,#}]"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v4

    .line 3933
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    sget-object v13, Lcom/sun/javafx/css/parser/CSSParser;->imports:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    .line 3932
    invoke-static {v9, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 3934
    .local v6, "msg":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v9

    move-object v7, v9

    .line 3935
    .local v7, "error":Lcom/sun/javafx/css/CssError;
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v10, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3936
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 3938
    :cond_c
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    goto/16 :goto_1

    .line 3952
    .end local v4    # "line":I
    .end local v5    # "pos":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "error":Lcom/sun/javafx/css/CssError;
    :cond_d
    goto/16 :goto_0

    .line 3998
    .local v3, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .local v4, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    :cond_e
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/css/Stylesheet;->getRules()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/sun/javafx/css/Rule;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    move-object v13, v4

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/Rule;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 4000
    move-object v9, v0

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4002
    .line 3954
    .end local v3    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v4    # "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    :cond_f
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_18

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3955
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_18

    .line 3957
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->selectors(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/util/List;

    move-result-object v9

    move-object v3, v9

    .line 3958
    .restart local v3    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v9, v3

    if-nez v9, :cond_10

    .line 4004
    .end local v3    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :goto_2
    return-void

    .line 3960
    .restart local v3    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_10
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_11

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3961
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x1c

    if-eq v9, v10, :cond_15

    .line 3962
    :cond_11
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_13

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v9

    :goto_3
    move v4, v9

    .line 3963
    .local v4, "line":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_14

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v9

    :goto_4
    move v5, v9

    .line 3964
    .restart local v5    # "pos":I
    const-string v9, "Expected LBRACE at [{0,number,#},{1,number,#}]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v4

    .line 3966
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 3965
    invoke-static {v9, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 3967
    .restart local v6    # "msg":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v9

    move-object v7, v9

    .line 3968
    .restart local v7    # "error":Lcom/sun/javafx/css/CssError;
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v10, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 3969
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 3971
    :cond_12
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 3972
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3973
    goto :goto_2

    .line 3962
    .end local v4    # "line":I
    .end local v5    # "pos":I
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "error":Lcom/sun/javafx/css/CssError;
    :cond_13
    const/4 v9, -0x1

    goto :goto_3

    .line 3963
    .restart local v4    # "line":I
    :cond_14
    const/4 v9, -0x1

    goto :goto_4

    .line 3977
    .end local v4    # "line":I
    :cond_15
    move-object v9, v0

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v10

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3979
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->declarations(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 3980
    .local v4, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    move-object v9, v4

    if-nez v9, :cond_16

    goto/16 :goto_2

    .line 3982
    :cond_16
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_e

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3983
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0x1d

    if-eq v9, v10, :cond_e

    .line 3984
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v9

    move v5, v9

    .line 3985
    .local v5, "line":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v9

    move v6, v9

    .line 3986
    .local v6, "pos":I
    const-string v9, "Expected RBRACE at [{0,number,#},{1,number,#}]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v5

    .line 3988
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 3987
    invoke-static {v9, v10}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 3989
    .local v7, "msg":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v9

    move-object v8, v9

    .line 3990
    .local v8, "error":Lcom/sun/javafx/css/CssError;
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v10, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 3991
    sget-object v9, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v10, v8

    invoke-virtual {v10}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 3993
    :cond_17
    move-object v9, v0

    move-object v10, v8

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 3994
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 3995
    goto/16 :goto_2

    .line 4003
    .end local v3    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v4    # "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    .end local v5    # "line":I
    .end local v6    # "pos":I
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "error":Lcom/sun/javafx/css/CssError;
    :cond_18
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4004
    goto/16 :goto_2
.end method

.method private parse(Lcom/sun/javafx/css/Stylesheet;Ljava/io/Reader;)V
    .locals 9

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v2, p2

    .local v2, "reader":Ljava/io/Reader;
    new-instance v5, Lcom/sun/javafx/css/parser/CSSLexer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/sun/javafx/css/parser/CSSLexer;-><init>()V

    move-object v3, v5

    .line 256
    .local v3, "lex":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/parser/CSSLexer;->setReader(Ljava/io/Reader;)V

    .line 259
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    :try_start_0
    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/Stylesheet;Lcom/sun/javafx/css/parser/CSSLexer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 268
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 265
    .local v4, "ex":Ljava/lang/Exception;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private parseBackgroundPosition(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BackgroundPosition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2617
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v2, p1

    .local v2, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    .line 2618
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    .line 2619
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const-string v21, "Expected \'<bg-position>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2621
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v3, v19

    .line 2622
    .local v3, "termOne":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    move-object/from16 v4, v19

    .line 2624
    .local v4, "valueOne":Lcom/sun/javafx/css/parser/Token;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v5, v19

    .line 2625
    .local v5, "termTwo":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v5

    if-eqz v19, :cond_5

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    :goto_0
    move-object/from16 v6, v19

    .line 2627
    .local v6, "valueTwo":Lcom/sun/javafx/css/parser/Token;
    move-object/from16 v19, v5

    if-eqz v19, :cond_6

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    :goto_1
    move-object/from16 v7, v19

    .line 2628
    .local v7, "termThree":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v7

    if-eqz v19, :cond_7

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    :goto_2
    move-object/from16 v8, v19

    .line 2630
    .local v8, "valueThree":Lcom/sun/javafx/css/parser/Token;
    move-object/from16 v19, v7

    if-eqz v19, :cond_8

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    :goto_3
    move-object/from16 v9, v19

    .line 2631
    .local v9, "termFour":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v9

    if-eqz v19, :cond_9

    move-object/from16 v19, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v10, v19

    .line 2634
    .local v10, "valueFour":Lcom/sun/javafx/css/parser/Token;
    move-object/from16 v19, v4

    if-eqz v19, :cond_a

    move-object/from16 v19, v6

    if-eqz v19, :cond_a

    move-object/from16 v19, v8

    if-nez v19, :cond_a

    move-object/from16 v19, v10

    if-nez v19, :cond_a

    .line 2636
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2637
    .local v11, "v1":Ljava/lang/String;
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v12, v19

    .line 2638
    .local v12, "v2":Ljava/lang/String;
    const-string v19, "top"

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "bottom"

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_2
    const-string v19, "left"

    move-object/from16 v20, v12

    .line 2639
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "right"

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "center"

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2641
    :cond_3
    move-object/from16 v19, v6

    move-object/from16 v13, v19

    .line 2642
    .local v13, "tmp":Lcom/sun/javafx/css/parser/Token;
    move-object/from16 v19, v4

    move-object/from16 v6, v19

    .line 2643
    move-object/from16 v19, v13

    move-object/from16 v4, v19

    .line 2647
    move-object/from16 v19, v5

    move-object/from16 v13, v19

    .line 2648
    .local v13, "tmp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v3

    move-object/from16 v5, v19

    .line 2649
    move-object/from16 v19, v13

    move-object/from16 v3, v19

    .line 2652
    .line 2692
    .end local v11    # "v1":Ljava/lang/String;
    .end local v12    # "v2":Ljava/lang/String;
    .end local v13    # "tmp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_4
    :goto_5
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v14, v20

    .local v14, "left":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v13, v20

    .local v13, "bottom":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v12, v20

    .local v12, "right":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v11, v19

    .line 2694
    .local v11, "top":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v19, v4

    if-nez v19, :cond_12

    move-object/from16 v19, v6

    if-nez v19, :cond_12

    move-object/from16 v19, v8

    if-nez v19, :cond_12

    move-object/from16 v19, v10

    if-nez v19, :cond_12

    .line 2695
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const-string v21, "No value found for background-position"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2912
    :goto_6
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v11

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v12

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    move-object/from16 v22, v13

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    move-object/from16 v22, v14

    aput-object v22, v20, v21

    move-object/from16 v15, v19

    .line 2913
    .local v15, "values":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v19, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v21, v15

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v1, v19

    .end local v1    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v1

    .line 2625
    .end local v6    # "valueTwo":Lcom/sun/javafx/css/parser/Token;
    .end local v7    # "termThree":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v8    # "valueThree":Lcom/sun/javafx/css/parser/Token;
    .end local v9    # "termFour":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v10    # "valueFour":Lcom/sun/javafx/css/parser/Token;
    .end local v11    # "top":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v12    # "right":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v13    # "bottom":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v14    # "left":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v15    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v1    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2627
    .restart local v6    # "valueTwo":Lcom/sun/javafx/css/parser/Token;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2628
    .restart local v7    # "termThree":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2630
    .restart local v8    # "valueThree":Lcom/sun/javafx/css/parser/Token;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2631
    .restart local v9    # "termFour":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 2652
    .restart local v10    # "valueFour":Lcom/sun/javafx/css/parser/Token;
    :cond_a
    move-object/from16 v19, v4

    if-eqz v19, :cond_4

    move-object/from16 v19, v6

    if-eqz v19, :cond_4

    move-object/from16 v19, v8

    if-eqz v19, :cond_4

    .line 2653
    const/16 v19, 0x0

    move-object/from16 v11, v19

    .line 2654
    .local v11, "termArray":[Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/16 v19, 0x0

    move-object/from16 v12, v19

    .line 2656
    .local v12, "tokeArray":[Lcom/sun/javafx/css/parser/Token;
    move-object/from16 v19, v10

    if-eqz v19, :cond_e

    .line 2657
    const-string v19, "top"

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "bottom"

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_b
    const-string v19, "left"

    move-object/from16 v20, v8

    .line 2658
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    const-string v19, "right"

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2660
    :cond_c
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v7

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v9

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    move-object/from16 v22, v3

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    move-object/from16 v22, v5

    aput-object v22, v20, v21

    move-object/from16 v11, v19

    .line 2661
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v8

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v10

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    move-object/from16 v22, v4

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    move-object/from16 v22, v6

    aput-object v22, v20, v21

    move-object/from16 v12, v19

    .line 2677
    :cond_d
    :goto_7
    move-object/from16 v19, v11

    if-eqz v19, :cond_4

    .line 2678
    move-object/from16 v19, v11

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v3, v19

    .line 2679
    move-object/from16 v19, v11

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v5, v19

    .line 2680
    move-object/from16 v19, v11

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v7, v19

    .line 2681
    move-object/from16 v19, v11

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move-object/from16 v9, v19

    .line 2683
    move-object/from16 v19, v12

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v4, v19

    .line 2684
    move-object/from16 v19, v12

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v6, v19

    .line 2685
    move-object/from16 v19, v12

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v8, v19

    .line 2686
    move-object/from16 v19, v12

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move-object/from16 v10, v19

    goto/16 :goto_5

    .line 2664
    :cond_e
    const-string v19, "top"

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    const-string v19, "bottom"

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2665
    :cond_f
    const-string v19, "left"

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_10

    const-string v19, "right"

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2667
    :cond_10
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v5

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v7

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    move-object/from16 v22, v3

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    const/16 v22, 0x0

    aput-object v22, v20, v21

    move-object/from16 v11, v19

    .line 2668
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v6

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v8

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    move-object/from16 v22, v4

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    const/16 v22, 0x0

    aput-object v22, v20, v21

    move-object/from16 v12, v19

    goto/16 :goto_7

    .line 2671
    :cond_11
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v7

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v3

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    move-object/from16 v22, v5

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    const/16 v22, 0x0

    aput-object v22, v20, v21

    move-object/from16 v11, v19

    .line 2672
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v8

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x1

    move-object/from16 v22, v4

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x2

    move-object/from16 v22, v6

    aput-object v22, v20, v21

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x3

    const/16 v22, 0x0

    aput-object v22, v20, v21

    move-object/from16 v12, v19

    goto/16 :goto_7

    .line 2696
    .local v11, "top":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .local v12, "right":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v13    # "bottom":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v14    # "left":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_12
    move-object/from16 v19, v4

    if-eqz v19, :cond_18

    move-object/from16 v19, v6

    if-nez v19, :cond_18

    move-object/from16 v19, v8

    if-nez v19, :cond_18

    move-object/from16 v19, v10

    if-nez v19, :cond_18

    .line 2698
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 2700
    .local v15, "v1":Ljava/lang/String;
    const-string v19, "center"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 2701
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2702
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2704
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2705
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    .line 2740
    :goto_8
    goto/16 :goto_6

    .line 2707
    :cond_13
    const-string v19, "left"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 2708
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2709
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2711
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2712
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_8

    .line 2714
    :cond_14
    const-string v19, "right"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2715
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2716
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2718
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2719
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_8

    .line 2721
    :cond_15
    const-string v19, "top"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 2722
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2723
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2725
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2726
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_8

    .line 2728
    :cond_16
    const-string v19, "bottom"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 2729
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2730
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2732
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2733
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_8

    .line 2735
    :cond_17
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v14, v19

    .line 2736
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2737
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2738
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_8

    .line 2740
    .end local v15    # "v1":Ljava/lang/String;
    :cond_18
    move-object/from16 v19, v4

    if-eqz v19, :cond_2b

    move-object/from16 v19, v6

    if-eqz v19, :cond_2b

    move-object/from16 v19, v8

    if-nez v19, :cond_2b

    move-object/from16 v19, v10

    if-nez v19, :cond_2b

    .line 2742
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 2743
    .restart local v15    # "v1":Ljava/lang/String;
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 2745
    .local v16, "v2":Ljava/lang/String;
    move-object/from16 v19, v15

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1e

    .line 2746
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v14, v19

    .line 2747
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2749
    const-string v19, "top"

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 2750
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2751
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    .line 2805
    :cond_19
    :goto_9
    goto/16 :goto_6

    .line 2752
    :cond_1a
    const-string v19, "bottom"

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 2753
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2754
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_9

    .line 2755
    :cond_1b
    const-string v19, "center"

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 2756
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2757
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_9

    .line 2758
    :cond_1c
    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 2759
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2760
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_9

    .line 2762
    :cond_1d
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    const-string v21, "Expected \'top\', \'bottom\', \'center\' or <size>"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_9

    .line 2764
    :cond_1e
    move-object/from16 v19, v15

    const-string v20, "left"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1f

    move-object/from16 v19, v15

    const-string v20, "right"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 2765
    :cond_1f
    move-object/from16 v19, v15

    const-string v20, "right"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    :goto_a
    move-object/from16 v14, v19

    .line 2766
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2768
    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_21

    .line 2769
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2770
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2765
    :cond_20
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    goto :goto_a

    .line 2771
    :cond_21
    move-object/from16 v19, v16

    const-string v20, "top"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_22

    move-object/from16 v19, v16

    const-string v20, "bottom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_22

    move-object/from16 v19, v16

    const-string v20, "center"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 2772
    :cond_22
    move-object/from16 v19, v16

    const-string v20, "top"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 2773
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2774
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2775
    :cond_23
    move-object/from16 v19, v16

    const-string v20, "center"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 2776
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2777
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2779
    :cond_24
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2780
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2783
    :cond_25
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    const-string v21, "Expected \'top\', \'bottom\', \'center\' or <size>"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2785
    :cond_26
    move-object/from16 v19, v15

    const-string v20, "center"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 2786
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2787
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2789
    move-object/from16 v19, v16

    const-string v20, "top"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 2790
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2791
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2792
    :cond_27
    move-object/from16 v19, v16

    const-string v20, "bottom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 2793
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2794
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2795
    :cond_28
    move-object/from16 v19, v16

    const-string v20, "center"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 2796
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2797
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2798
    :cond_29
    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2a

    .line 2799
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2800
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_9

    .line 2802
    :cond_2a
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    const-string v21, "Expected \'top\', \'bottom\', \'center\' or <size>"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2805
    .end local v15    # "v1":Ljava/lang/String;
    .end local v16    # "v2":Ljava/lang/String;
    :cond_2b
    move-object/from16 v19, v4

    if-eqz v19, :cond_3d

    move-object/from16 v19, v6

    if-eqz v19, :cond_3d

    move-object/from16 v19, v8

    if-eqz v19, :cond_3d

    move-object/from16 v19, v10

    if-nez v19, :cond_3d

    .line 2806
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 2807
    .restart local v15    # "v1":Ljava/lang/String;
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 2808
    .restart local v16    # "v2":Ljava/lang/String;
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v17, v19

    .line 2810
    .local v17, "v3":Ljava/lang/String;
    move-object/from16 v19, v15

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2c

    const-string v19, "center"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 2813
    :cond_2c
    const-string v19, "center"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 2814
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2818
    :goto_b
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2820
    move-object/from16 v19, v17

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_31

    .line 2821
    const-string v19, "top"

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 2822
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2823
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    .line 2883
    :cond_2d
    :goto_c
    goto/16 :goto_6

    .line 2816
    :cond_2e
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v14, v19

    goto :goto_b

    .line 2824
    :cond_2f
    const-string v19, "bottom"

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 2825
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2826
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v13, v19

    goto :goto_c

    .line 2828
    :cond_30
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    const-string v21, "Expected \'top\' or \'bottom\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_c

    .line 2831
    :cond_31
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    const-string v21, "Expected <size>"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_c

    .line 2833
    :cond_32
    const-string v19, "left"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_33

    const-string v19, "right"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 2834
    :cond_33
    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_38

    .line 2837
    const-string v19, "left"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 2838
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v14, v19

    .line 2839
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2845
    :goto_d
    const-string v19, "top"

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 2846
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2847
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto :goto_c

    .line 2841
    :cond_34
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2842
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v12, v19

    goto :goto_d

    .line 2848
    :cond_35
    const-string v19, "bottom"

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_36

    .line 2849
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2850
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_c

    .line 2851
    :cond_36
    const-string v19, "center"

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_37

    .line 2852
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->FIFTY_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2853
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_c

    .line 2855
    :cond_37
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    const-string v21, "Expected \'top\', \'bottom\' or \'center\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2860
    :cond_38
    const-string v19, "left"

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_39

    .line 2861
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2862
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2868
    :goto_e
    move-object/from16 v19, v17

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3c

    .line 2869
    const-string v19, "top"

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3a

    .line 2870
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2871
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_c

    .line 2864
    :cond_39
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2865
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    goto :goto_e

    .line 2872
    :cond_3a
    const-string v19, "bottom"

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3b

    .line 2873
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2874
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v13, v19

    goto/16 :goto_c

    .line 2876
    :cond_3b
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    const-string v21, "Expected \'top\' or \'bottom\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2879
    :cond_3c
    move-object/from16 v19, v1

    move-object/from16 v20, v7

    const-string v21, "Expected <size>"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2884
    .end local v15    # "v1":Ljava/lang/String;
    .end local v16    # "v2":Ljava/lang/String;
    .end local v17    # "v3":Ljava/lang/String;
    :cond_3d
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v15, v19

    .line 2885
    .restart local v15    # "v1":Ljava/lang/String;
    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v19

    .line 2886
    .restart local v16    # "v2":Ljava/lang/String;
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v17, v19

    .line 2887
    .restart local v17    # "v3":Ljava/lang/String;
    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    .line 2889
    .local v18, "v4":Ljava/lang/String;
    move-object/from16 v19, v15

    const-string v20, "left"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3e

    move-object/from16 v19, v15

    const-string v20, "right"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_42

    :cond_3e
    move-object/from16 v19, v17

    const-string v20, "top"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3f

    move-object/from16 v19, v17

    const-string v20, "bottom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_42

    :cond_3f
    move-object/from16 v19, v16

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_42

    move-object/from16 v19, v18

    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->isPositionKeyWord(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_42

    .line 2890
    move-object/from16 v19, v15

    const-string v20, "left"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_40

    .line 2891
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v14, v19

    .line 2892
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v19

    .line 2898
    :goto_f
    move-object/from16 v19, v17

    const-string v20, "top"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_41

    .line 2899
    move-object/from16 v19, v1

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2900
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v13, v19

    goto/16 :goto_6

    .line 2894
    :cond_40
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v14, v19

    .line 2895
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v12, v19

    goto :goto_f

    .line 2902
    :cond_41
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->ZERO_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v11, v19

    .line 2903
    move-object/from16 v19, v1

    move-object/from16 v20, v9

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v13, v19

    goto/16 :goto_6

    .line 2907
    :cond_42
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const-string v21, "Expected \'left\' or \'right\' followed by <size> followed by \'top\' or \'bottom\' followed by <size>"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private parseBackgroundPositionLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BackgroundPosition;",
            ">;[",
            "Ljavafx/scene/layout/BackgroundPosition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2919
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 2920
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 2921
    .local v3, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BackgroundPosition;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 2922
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 2923
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 2924
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseBackgroundPosition(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2925
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 2927
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundPositionConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBackgroundPositionConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBackgroundRepeatStyleLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3023
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3024
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 3025
    .local v3, "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;, "[[Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/layout/BackgroundRepeat;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 3026
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 3027
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 3028
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseRepeatStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3029
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 3031
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBackgroundSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BackgroundSize;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3041
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v8, 0x0

    move-object v2, v8

    .local v2, "height":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v8, 0x0

    move-object v3, v8

    .line 3042
    .local v3, "width":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v8, 0x0

    move v4, v8

    .local v4, "cover":Z
    const/4 v8, 0x0

    move v5, v8

    .line 3044
    .local v5, "contain":Z
    move-object v8, v1

    move-object v6, v8

    .line 3045
    .local v6, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v6

    const-string v10, "Expected \'<bg-size>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3047
    :cond_0
    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_9

    .line 3048
    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3049
    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v7, v8

    .line 3051
    .local v7, "text":Ljava/lang/String;
    const-string v8, "auto"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3063
    .line 3070
    .end local v7    # "text":Ljava/lang/String;
    :goto_1
    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    if-eqz v8, :cond_3

    .line 3071
    move v8, v4

    if-nez v8, :cond_1

    move v8, v5

    if-eqz v8, :cond_2

    :cond_1
    move-object v8, v0

    move-object v9, v6

    const-string v10, "Unexpected \'<bg-size>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3073
    :cond_2
    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_10

    .line 3074
    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3075
    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object v7, v8

    .line 3077
    .restart local v7    # "text":Ljava/lang/String;
    const-string v8, "auto"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3078
    const/4 v8, 0x0

    move-object v2, v8

    .line 3088
    .line 3096
    .end local v7    # "text":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x2

    new-instance v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move v13, v4

    if-eqz v13, :cond_12

    const-string v13, "true"

    .line 3100
    :goto_4
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x3

    new-instance v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move v13, v5

    if-eqz v13, :cond_13

    const-string v13, "true"

    .line 3101
    :goto_5
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v11, v9, v10

    move-object v7, v8

    .line 3103
    .local v7, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v7

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 3049
    .end local v7    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3053
    .local v7, "text":Ljava/lang/String;
    :cond_5
    const-string v8, "cover"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3054
    const/4 v8, 0x1

    move v4, v8

    goto/16 :goto_1

    .line 3055
    :cond_6
    const-string v8, "contain"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3056
    const/4 v8, 0x1

    move v5, v8

    goto/16 :goto_1

    .line 3057
    :cond_7
    const-string v8, "stretch"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3058
    sget-object v8, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v8

    .line 3059
    sget-object v8, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v2, v8

    goto/16 :goto_1

    .line 3061
    :cond_8
    move-object v8, v0

    move-object v9, v6

    const-string v10, "Expected \'auto\', \'cover\', \'contain\', or  \'stretch\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3063
    .end local v7    # "text":Ljava/lang/String;
    :cond_9
    move-object v8, v0

    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3064
    move-object v8, v0

    move-object v9, v6

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v3, v8

    .line 3065
    const/4 v8, 0x0

    move-object v2, v8

    goto/16 :goto_1

    .line 3067
    :cond_a
    move-object v8, v0

    move-object v9, v6

    const-string v10, "Expected \'<bg-size>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3075
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3079
    .restart local v7    # "text":Ljava/lang/String;
    :cond_c
    const-string v8, "cover"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3080
    move-object v8, v0

    move-object v9, v6

    const-string v10, "Unexpected \'cover\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3081
    :cond_d
    const-string v8, "contain"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3082
    move-object v8, v0

    move-object v9, v6

    const-string v10, "Unexpected \'contain\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3083
    :cond_e
    const-string v8, "stretch"

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 3084
    sget-object v8, Lcom/sun/javafx/css/parser/CSSParser;->ONE_HUNDRED_PERCENT:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v2, v8

    goto/16 :goto_3

    .line 3086
    :cond_f
    move-object v8, v0

    move-object v9, v6

    const-string v10, "Expected \'auto\' or \'stretch\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3088
    .end local v7    # "text":Ljava/lang/String;
    :cond_10
    move-object v8, v0

    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 3089
    move-object v8, v0

    move-object v9, v6

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v2, v8

    goto/16 :goto_3

    .line 3091
    :cond_11
    move-object v8, v0

    move-object v9, v6

    const-string v10, "Expected \'<bg-size>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3096
    :cond_12
    const-string v13, "false"

    goto/16 :goto_4

    .line 3100
    :cond_13
    const-string v13, "false"

    goto/16 :goto_5
.end method

.method private parseBackgroundSizeLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BackgroundSize;",
            ">;[",
            "Ljavafx/scene/layout/BackgroundSize;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3110
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 3111
    .local v3, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BackgroundSize;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 3112
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 3113
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 3114
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseBackgroundSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3115
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 3117
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderImageRepeatStyleLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3008
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3009
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 3010
    .local v3, "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;, "[[Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/layout/BackgroundRepeat;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 3011
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 3012
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 3013
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseRepeatStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3014
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 3016
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderImageSlice(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3468
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v1

    move-object v2, v7

    .line 3469
    .local v2, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v2

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v7, :cond_0

    move-object v7, v0

    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3470
    :cond_0
    move-object v7, v0

    move-object v8, v2

    const-string v9, "Expected \'<size>\'"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3472
    :cond_1
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v7

    .line 3473
    .local v3, "insets":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v4, v7

    .line 3475
    .local v4, "fill":Ljava/lang/Boolean;
    const/4 v7, 0x0

    move v5, v7

    .line 3476
    .local v5, "inset":I
    :cond_2
    move v7, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    move-object v7, v2

    if-eqz v7, :cond_3

    .line 3477
    move-object v7, v3

    move v8, v5

    add-int/lit8 v5, v5, 0x1

    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    aput-object v9, v7, v8

    .line 3479
    move-object v7, v2

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v2, v8

    if-eqz v7, :cond_2

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v7, :cond_2

    move-object v7, v2

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3481
    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_2

    .line 3483
    const-string v7, "fill"

    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3484
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, v7

    .line 3490
    :cond_3
    move v7, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_4

    move-object v7, v3

    const/4 v8, 0x1

    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 3491
    :cond_4
    move v7, v5

    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    move-object v7, v3

    const/4 v8, 0x2

    move-object v9, v3

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 3492
    :cond_5
    move v7, v5

    const/4 v8, 0x4

    if-ge v7, v8, :cond_6

    move-object v7, v3

    const/4 v8, 0x3

    move-object v9, v3

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 3494
    :cond_6
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    .line 3495
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v10, v8, v9

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x1

    new-instance v10, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v10, v8, v9

    move-object v6, v7

    .line 3498
    .local v6, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v6

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderImageSliceLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
            ">;[",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3504
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3505
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 3506
    .local v3, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Lcom/sun/javafx/scene/layout/region/BorderImageSlices;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 3507
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 3508
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 3509
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderImageSlice(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3510
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 3512
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderImageWidth(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderWidths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3522
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    move-object v2, v5

    .line 3523
    .local v2, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3524
    :cond_0
    move-object v5, v0

    move-object v6, v2

    const-string v7, "Expected \'<size>\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3526
    :cond_1
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v5

    .line 3528
    .local v3, "insets":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v5, 0x0

    move v4, v5

    .line 3529
    .local v4, "inset":I
    :cond_2
    :goto_0
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    move-object v5, v2

    if-eqz v5, :cond_3

    .line 3530
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3532
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    if-eqz v5, :cond_2

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v5, :cond_2

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3534
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 3538
    :cond_3
    move v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3539
    :cond_4
    move v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_5

    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3540
    :cond_5
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_6

    move-object v5, v3

    const/4 v6, 0x3

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3542
    :cond_6
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderImageWidthLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderWidths;",
            ">;[",
            "Ljavafx/scene/layout/BorderWidths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3548
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3549
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 3550
    .local v3, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BorderWidths;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 3551
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 3552
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 3553
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderImageWidth(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3554
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 3556
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageWidthsSequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageWidthsSequenceConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderPaint(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;[",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    move-object v2, v5

    .line 3124
    .local v2, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v5

    .line 3125
    .local v3, "paints":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Paint;>;"
    const/4 v5, 0x0

    move v4, v5

    .line 3127
    .local v4, "paint":I
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 3128
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v5, :cond_0

    move-object v5, v3

    array-length v5, v5

    move v6, v4

    if-gt v5, v6, :cond_1

    :cond_0
    move-object v5, v0

    move-object v6, v2

    const-string v7, "Expected \'<paint>\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3129
    :cond_1
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3130
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v2, v5

    goto :goto_0

    .line 3133
    :cond_2
    move v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3134
    :cond_3
    move v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3135
    :cond_4
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    move-object v5, v3

    const/4 v6, 0x3

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3137
    :cond_5
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/StrokeBorderPaintConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderPaintLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;[",
            "Ljavafx/scene/paint/Paint;",
            ">;[[",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3144
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 3145
    .local v3, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue<*Ljavafx/scene/paint/Paint;>;[Ljavafx/scene/paint/Paint;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 3146
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 3147
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 3148
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderPaint(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3149
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 3151
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3210
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v12, 0x0

    move-object v2, v12

    .line 3211
    .local v2, "dashStyle":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;[Ljava/lang/Number;>;"
    const/4 v12, 0x0

    move-object v3, v12

    .line 3212
    .local v3, "dashPhase":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljava/lang/Number;>;"
    const/4 v12, 0x0

    move-object v4, v12

    .line 3213
    .local v4, "strokeType":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/shape/StrokeType;>;"
    const/4 v12, 0x0

    move-object v5, v12

    .line 3214
    .local v5, "strokeLineJoin":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/shape/StrokeLineJoin;>;"
    const/4 v12, 0x0

    move-object v6, v12

    .line 3215
    .local v6, "strokeMiterLimit":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljava/lang/Number;>;"
    const/4 v12, 0x0

    move-object v7, v12

    .line 3217
    .local v7, "strokeLineCap":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<Ljava/lang/String;Ljavafx/scene/shape/StrokeLineCap;>;"
    move-object v12, v1

    move-object v8, v12

    .line 3219
    .local v8, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->dashStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljavafx/css/ParsedValue;

    move-result-object v12

    move-object v2, v12

    .line 3221
    move-object v12, v8

    move-object v9, v12

    .line 3222
    .local v9, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v8, v12

    .line 3223
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->getKeyword(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 3226
    .local v10, "keyword":Ljava/lang/String;
    const-string v12, "phase"

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3228
    move-object v12, v8

    move-object v9, v12

    .line 3229
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v8, v13

    if-eqz v12, :cond_0

    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v12, :cond_0

    move-object v12, v0

    move-object v13, v8

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3231
    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    move-object v12, v0

    move-object v13, v8

    const-string v14, "Expected \'<size>\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3233
    :cond_1
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v11, v12

    .line 3234
    .local v11, "sizeVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v12, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v11

    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v12

    .line 3236
    move-object v12, v8

    move-object v9, v12

    .line 3237
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v8, v12

    .line 3241
    .end local v11    # "sizeVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_2
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseStrokeType(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v4, v12

    .line 3242
    move-object v12, v4

    if-eqz v12, :cond_3

    .line 3243
    move-object v12, v8

    move-object v9, v12

    .line 3244
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v8, v12

    .line 3247
    :cond_3
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->getKeyword(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 3249
    const-string v12, "line-join"

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3251
    move-object v12, v8

    move-object v9, v12

    .line 3252
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v8, v12

    .line 3254
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseStrokeLineJoin(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v11, v12

    .line 3255
    .local v11, "lineJoinValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v12, v11

    if-eqz v12, :cond_7

    .line 3256
    move-object v12, v11

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v5, v12

    .line 3257
    move-object v12, v11

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object v6, v12

    .line 3261
    :goto_0
    move-object v12, v8

    move-object v9, v12

    .line 3262
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v8, v12

    .line 3263
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->getKeyword(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 3266
    .end local v11    # "lineJoinValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_4
    const-string v12, "line-cap"

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3268
    move-object v12, v8

    move-object v9, v12

    .line 3269
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v8, v12

    .line 3271
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->parseStrokeLineCap(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v12

    move-object v7, v12

    .line 3272
    move-object v12, v7

    if-nez v12, :cond_5

    .line 3273
    move-object v12, v0

    move-object v13, v8

    const-string v14, "Expected \'square\', \'butt\' or \'round\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3276
    :cond_5
    move-object v12, v8

    move-object v9, v12

    .line 3277
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v8, v12

    .line 3280
    :cond_6
    move-object v12, v8

    if-eqz v12, :cond_8

    .line 3283
    move-object v12, v1

    move-object v13, v8

    iput-object v13, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 3292
    :goto_1
    const/4 v12, 0x6

    new-array v12, v12, [Ljavafx/css/ParsedValue;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v2

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move-object v15, v3

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move-object v15, v4

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x3

    move-object v15, v5

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x4

    move-object v15, v6

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x5

    move-object v15, v7

    aput-object v15, v13, v14

    move-object v11, v12

    .line 3301
    .local v11, "values":[Ljavafx/css/ParsedValue;
    new-instance v12, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v11

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v12

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 3259
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .local v11, "lineJoinValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_7
    move-object v12, v0

    move-object v13, v8

    const-string v14, "Expected \'miter <size>?\', \'bevel\' or \'round\'"

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3288
    .end local v11    # "lineJoinValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_8
    move-object v12, v1

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 3289
    move-object v12, v1

    move-object v13, v9

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    iput-object v13, v12, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    goto :goto_1
.end method

.method private parseBorderStyleLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;[",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;[[",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3178
    .local v2, "nLayers":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 3179
    .local v3, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BorderStrokeStyle;>;[Ljavafx/scene/layout/BorderStrokeStyle;>;"
    const/4 v6, 0x0

    move v4, v6

    .line 3180
    .local v4, "layer":I
    move-object v6, v1

    move-object v5, v6

    .line 3181
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 3182
    move-object v6, v3

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderStyleSeries(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3183
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 3185
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBorderStyleConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBorderStyleConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseBorderStyleSeries(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;[",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    move-object v2, v5

    .line 3159
    .local v2, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v5

    .line 3160
    .local v3, "borders":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BorderStrokeStyle;>;"
    const/4 v5, 0x0

    move v4, v5

    .line 3161
    .local v4, "border":I
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 3162
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3163
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v2, v5

    goto :goto_0

    .line 3166
    :cond_0
    move v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3167
    :cond_1
    move v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3168
    :cond_2
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    move-object v5, v3

    const/4 v6, 0x3

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 3170
    :cond_3
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderStrokeStyleSequenceConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseColor(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<*",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v3, 0x0

    move-object v2, v3

    .line 957
    .local v2, "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 958
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 959
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 960
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 962
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v2, v3

    .line 967
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 965
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Expected \'<color>\'"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseColorStops(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")[",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1247
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v4, p1

    .local v4, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/16 v22, 0x1

    move/from16 v5, v22

    .line 1248
    .local v5, "nArgs":I
    move-object/from16 v22, v4

    move-object/from16 v6, v22

    .line 1249
    .local v6, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object/from16 v22, v6

    if-eqz v22, :cond_1

    .line 1250
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 1251
    add-int/lit8 v5, v5, 0x1

    .line 1252
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v0

    move-object/from16 v6, v22

    goto :goto_0

    .line 1253
    :cond_0
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1254
    move-object/from16 v22, v6

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v0

    move-object/from16 v6, v22

    goto :goto_0

    .line 1260
    :cond_1
    move/from16 v22, v5

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 1261
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    const-string v24, "Expected \'<color-stop>\'"

    invoke-direct/range {v22 .. v24}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1264
    :cond_2
    move/from16 v22, v5

    move/from16 v0, v22

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v0

    move-object/from16 v7, v22

    .line 1265
    .local v7, "colors":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    move/from16 v22, v5

    move/from16 v0, v22

    new-array v0, v0, [Lcom/sun/javafx/css/Size;

    move-object/from16 v22, v0

    move-object/from16 v8, v22

    .line 1266
    .local v8, "positions":[Lcom/sun/javafx/css/Size;
    move-object/from16 v22, v8

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1268
    move-object/from16 v22, v4

    move-object/from16 v9, v22

    .line 1269
    .local v9, "stop":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v22, v4

    move-object/from16 v10, v22

    .line 1270
    .local v10, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/16 v22, 0x0

    move-object/from16 v11, v22

    .line 1271
    .local v11, "units":Lcom/sun/javafx/css/SizeUnits;
    const/16 v22, 0x0

    move/from16 v12, v22

    .local v12, "n":I
    :goto_1
    move/from16 v22, v12

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 1273
    move-object/from16 v22, v7

    move/from16 v23, v12

    move-object/from16 v24, v3

    move-object/from16 v25, v9

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->parseColor(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v24

    aput-object v24, v22, v23

    .line 1275
    move-object/from16 v22, v9

    move-object/from16 v10, v22

    .line 1276
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v0

    move-object/from16 v13, v22

    .line 1277
    .local v13, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v22, v13

    if-eqz v22, :cond_5

    .line 1278
    move-object/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1279
    move-object/from16 v22, v8

    move/from16 v23, v12

    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v24

    aput-object v24, v22, v23

    .line 1280
    move-object/from16 v22, v11

    if-eqz v22, :cond_3

    .line 1281
    move-object/from16 v22, v11

    move-object/from16 v23, v8

    move/from16 v24, v12

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1282
    move-object/from16 v22, v3

    move-object/from16 v23, v13

    const-string v24, "Parser unable to handle mixed \'<percent>\' and \'<length>\'"

    invoke-direct/range {v22 .. v24}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1288
    :cond_3
    :goto_2
    move-object/from16 v22, v13

    move-object/from16 v10, v22

    .line 1289
    move-object/from16 v22, v13

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v0

    move-object/from16 v9, v22

    .line 1271
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1286
    :cond_4
    move-object/from16 v22, v3

    move-object/from16 v23, v10

    const-string v24, "Expected \'<percent>\' or \'<length>\'"

    invoke-direct/range {v22 .. v24}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto :goto_2

    .line 1291
    :cond_5
    move-object/from16 v22, v9

    move-object/from16 v10, v22

    .line 1292
    move-object/from16 v22, v9

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v0

    move-object/from16 v9, v22

    goto :goto_3

    .line 1304
    .end local v13    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_6
    move-object/from16 v22, v8

    const/16 v23, 0x0

    aget-object v22, v22, v23

    if-nez v22, :cond_7

    move-object/from16 v22, v8

    const/16 v23, 0x0

    new-instance v24, Lcom/sun/javafx/css/Size;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    const-wide/16 v26, 0x0

    sget-object v28, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v25 .. v28}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    aput-object v24, v22, v23

    .line 1305
    :cond_7
    move-object/from16 v22, v8

    move/from16 v23, v5

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget-object v22, v22, v23

    if-nez v22, :cond_8

    move-object/from16 v22, v8

    move/from16 v23, v5

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    new-instance v24, Lcom/sun/javafx/css/Size;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    sget-object v28, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v25 .. v28}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    aput-object v24, v22, v23

    .line 1311
    :cond_8
    const/16 v22, 0x0

    move-object/from16 v12, v22

    .line 1312
    .local v12, "max":Lcom/sun/javafx/css/Size;
    const/16 v22, 0x1

    move/from16 v13, v22

    .local v13, "n":I
    :goto_4
    move/from16 v22, v13

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 1313
    move-object/from16 v22, v8

    move/from16 v23, v13

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget-object v22, v22, v23

    move-object/from16 v14, v22

    .line 1314
    .local v14, "pos0":Lcom/sun/javafx/css/Size;
    move-object/from16 v22, v14

    if-nez v22, :cond_a

    .line 1312
    :cond_9
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1315
    :cond_a
    move-object/from16 v22, v12

    if-eqz v22, :cond_b

    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v22

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v24

    cmpg-double v22, v22, v24

    if-gez v22, :cond_c

    .line 1317
    :cond_b
    move-object/from16 v22, v14

    move-object/from16 v12, v22

    .line 1319
    :cond_c
    move-object/from16 v22, v8

    move/from16 v23, v13

    aget-object v22, v22, v23

    move-object/from16 v15, v22

    .line 1320
    .local v15, "pos1":Lcom/sun/javafx/css/Size;
    move-object/from16 v22, v15

    if-nez v22, :cond_d

    goto :goto_5

    .line 1322
    :cond_d
    move-object/from16 v22, v15

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v22

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v24

    cmpg-double v22, v22, v24

    if-gez v22, :cond_9

    move-object/from16 v22, v8

    move/from16 v23, v13

    move-object/from16 v24, v12

    aput-object v24, v22, v23

    goto :goto_5

    .line 1329
    .end local v14    # "pos0":Lcom/sun/javafx/css/Size;
    .end local v15    # "pos1":Lcom/sun/javafx/css/Size;
    :cond_e
    const/16 v22, 0x0

    move-object/from16 v13, v22

    .line 1330
    .local v13, "preceding":Lcom/sun/javafx/css/Size;
    const/16 v22, -0x1

    move/from16 v14, v22

    .line 1331
    .local v14, "withoutIndex":I
    const/16 v22, 0x0

    move/from16 v15, v22

    .local v15, "n":I
    :goto_6
    move/from16 v22, v15

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    .line 1332
    move-object/from16 v22, v8

    move/from16 v23, v15

    aget-object v22, v22, v23

    move-object/from16 v16, v22

    .line 1333
    .local v16, "pos":Lcom/sun/javafx/css/Size;
    move-object/from16 v22, v16

    if-nez v22, :cond_10

    .line 1334
    move/from16 v22, v14

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    move/from16 v22, v15

    move/from16 v14, v22

    .line 1331
    :cond_f
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1336
    :cond_10
    move/from16 v22, v14

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    .line 1338
    move/from16 v22, v15

    move/from16 v23, v14

    sub-int v22, v22, v23

    move/from16 v17, v22

    .line 1339
    .local v17, "nWithout":I
    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v22

    move-wide/from16 v18, v22

    .line 1340
    .local v18, "precedingValue":D
    move-object/from16 v22, v16

    .line 1341
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v22

    move-wide/from16 v24, v18

    sub-double v22, v22, v24

    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 1343
    .local v20, "delta":D
    :goto_8
    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 1344
    move-wide/from16 v22, v18

    move-wide/from16 v24, v20

    add-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 1345
    move-object/from16 v22, v8

    move/from16 v23, v14

    add-int/lit8 v14, v14, 0x1

    new-instance v24, Lcom/sun/javafx/css/Size;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    move-wide/from16 v26, v18

    move-object/from16 v28, v16

    .line 1346
    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v28

    invoke-direct/range {v25 .. v28}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    aput-object v24, v22, v23

    goto :goto_8

    .line 1348
    :cond_11
    const/16 v22, -0x1

    move/from16 v14, v22

    .line 1349
    move-object/from16 v22, v16

    move-object/from16 v13, v22

    .line 1350
    goto :goto_7

    .line 1351
    .end local v17    # "nWithout":I
    .end local v18    # "precedingValue":D
    .end local v20    # "delta":D
    :cond_12
    move-object/from16 v22, v16

    move-object/from16 v13, v22

    goto :goto_7

    .line 1356
    .end local v16    # "pos":Lcom/sun/javafx/css/Size;
    :cond_13
    move/from16 v22, v5

    move/from16 v0, v22

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v0

    move-object/from16 v15, v22

    .line 1357
    .local v15, "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    const/16 v22, 0x0

    move/from16 v16, v22

    .local v16, "n":I
    :goto_9
    move/from16 v22, v16

    move/from16 v23, v5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_14

    .line 1358
    move-object/from16 v22, v15

    move/from16 v23, v16

    new-instance v24, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v26, v0

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x0

    new-instance v29, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v33, v29

    move-object/from16 v29, v33

    move-object/from16 v30, v33

    move-object/from16 v31, v8

    move/from16 v32, v16

    aget-object v31, v31, v32

    const/16 v32, 0x0

    invoke-direct/range {v30 .. v32}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v29, v27, v28

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    const/16 v28, 0x1

    move-object/from16 v29, v7

    move/from16 v30, v16

    aget-object v29, v29, v30

    aput-object v29, v27, v28

    .line 1363
    invoke-static {}, Lcom/sun/javafx/css/parser/StopConverter;->getInstance()Lcom/sun/javafx/css/parser/StopConverter;

    move-result-object v27

    invoke-direct/range {v25 .. v27}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v24, v22, v23

    .line 1357
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1367
    :cond_14
    move-object/from16 v22, v15

    move-object/from16 v3, v22

    .end local v3    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v3
.end method

.method private parseCornerRadius(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[[",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;[",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2474
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v3, p1

    .local v3, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v18

    move/from16 v4, v18

    .line 2476
    .local v4, "nLayers":I
    move-object/from16 v18, v3

    move-object/from16 v5, v18

    .line 2477
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/16 v18, 0x0

    move/from16 v6, v18

    .line 2478
    .local v6, "layer":I
    move/from16 v18, v4

    move/from16 v0, v18

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 2480
    .local v7, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljavafx/scene/layout/CornerRadii;>;"
    :goto_0
    move-object/from16 v18, v5

    if-eqz v18, :cond_1a

    .line 2482
    const/16 v18, 0x0

    move/from16 v8, v18

    .line 2483
    .local v8, "nHorizontalTerms":I
    move-object/from16 v18, v5

    move-object/from16 v9, v18

    .line 2484
    .local v9, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_1
    move-object/from16 v18, v9

    if-eqz v18, :cond_0

    .line 2485
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 2486
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 2493
    :cond_0
    const/16 v18, 0x0

    move/from16 v10, v18

    .line 2494
    .local v10, "nVerticalTerms":I
    :goto_2
    move-object/from16 v18, v9

    if-eqz v18, :cond_1

    .line 2495
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 2496
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    const-string v20, "unexpected SOLIDUS"

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2497
    .line 2503
    :cond_1
    move/from16 v18, v8

    if-eqz v18, :cond_2

    move/from16 v18, v8

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    move/from16 v18, v10

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 2504
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const-string v20, "expected [<length>|<percentage>]{1,4} [/ [<length>|<percentage>]{1,4}]?"

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2508
    :cond_3
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 2511
    .local v11, "orientation":I
    const/16 v18, 0x2

    const/16 v19, 0x4

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v19

    const-class v18, Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v12, v18

    .line 2513
    .local v12, "radii":[[Lcom/sun/javafx/css/ParsedValueImpl;, "[[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-wide/16 v22, 0x0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v13, v18

    .line 2514
    .local v13, "zero":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "r":I
    :goto_3
    move/from16 v18, v14

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move/from16 v19, v14

    move-object/from16 v20, v13

    aput-object v20, v18, v19

    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move/from16 v19, v14

    move-object/from16 v20, v13

    aput-object v20, v18, v19

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2489
    .end local v10    # "nVerticalTerms":I
    .end local v11    # "orientation":I
    .end local v12    # "radii":[[Lcom/sun/javafx/css/ParsedValueImpl;, "[[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v13    # "zero":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v14    # "r":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 2490
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    goto/16 :goto_1

    .line 2499
    .restart local v10    # "nVerticalTerms":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 2500
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    goto/16 :goto_2

    .line 2516
    .restart local v11    # "orientation":I
    .restart local v12    # "radii":[[Lcom/sun/javafx/css/ParsedValueImpl;, "[[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v13    # "zero":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v14    # "r":I
    :cond_6
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 2517
    .local v14, "hr":I
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 2519
    .local v15, "vr":I
    move-object/from16 v18, v5

    move-object/from16 v16, v18

    .line 2520
    .local v16, "lastTerm":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_4
    move/from16 v18, v14

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    move/from16 v18, v15

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    move-object/from16 v18, v5

    if-eqz v18, :cond_9

    .line 2522
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2523
    add-int/lit8 v11, v11, 0x1

    .line 2532
    :goto_5
    move-object/from16 v18, v5

    move-object/from16 v16, v18

    .line 2533
    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    goto :goto_4

    .line 2525
    :cond_7
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v18

    move-object/from16 v17, v18

    .line 2526
    .local v17, "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move/from16 v18, v11

    if-nez v18, :cond_8

    .line 2527
    move-object/from16 v18, v12

    move/from16 v19, v11

    aget-object v18, v18, v19

    move/from16 v19, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v17

    aput-object v20, v18, v19

    goto :goto_5

    .line 2529
    :cond_8
    move-object/from16 v18, v12

    move/from16 v19, v11

    aget-object v18, v18, v19

    move/from16 v19, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v20, v17

    aput-object v20, v18, v19

    goto :goto_5

    .line 2548
    .end local v17    # "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_9
    move/from16 v18, v14

    if-eqz v18, :cond_18

    .line 2549
    move/from16 v18, v14

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2550
    :cond_a
    move/from16 v18, v14

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2551
    :cond_b
    move/from16 v18, v14

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x3

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2557
    :cond_c
    move/from16 v18, v15

    if-eqz v18, :cond_19

    .line 2558
    move/from16 v18, v15

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v20, v12

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2559
    :cond_d
    move/from16 v18, v15

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2

    move-object/from16 v20, v12

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2560
    :cond_e
    move/from16 v18, v15

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x3

    move-object/from16 v20, v12

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2570
    :cond_f
    :goto_6
    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    :cond_10
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v22, v13

    move-object/from16 v25, v20

    move/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v20, v27

    move-object/from16 v21, v25

    move/from16 v22, v26

    move-object/from16 v23, v27

    aput-object v23, v21, v22

    aput-object v20, v18, v19

    .line 2571
    :cond_11
    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_12

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    :cond_12
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    move-object/from16 v22, v13

    move-object/from16 v25, v20

    move/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v20, v27

    move-object/from16 v21, v25

    move/from16 v22, v26

    move-object/from16 v23, v27

    aput-object v23, v21, v22

    aput-object v20, v18, v19

    .line 2572
    :cond_13
    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_14

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    :cond_14
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v22, v13

    move-object/from16 v25, v20

    move/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v20, v27

    move-object/from16 v21, v25

    move/from16 v22, v26

    move-object/from16 v23, v27

    aput-object v23, v21, v22

    aput-object v20, v18, v19

    .line 2573
    :cond_15
    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x0

    aget-object v19, v19, v20

    const/16 v20, 0x3

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v18, v13

    move-object/from16 v19, v12

    const/16 v20, 0x1

    aget-object v19, v19, v20

    const/16 v20, 0x3

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    :cond_16
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x3

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x3

    move-object/from16 v22, v13

    move-object/from16 v25, v20

    move/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v20, v27

    move-object/from16 v21, v25

    move/from16 v22, v26

    move-object/from16 v23, v27

    aput-object v23, v21, v22

    aput-object v20, v18, v19

    .line 2575
    :cond_17
    move-object/from16 v18, v7

    move/from16 v19, v6

    add-int/lit8 v6, v6, 0x1

    new-instance v20, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v12

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v20, v18, v19

    .line 2577
    move-object/from16 v18, v2

    move-object/from16 v19, v16

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v18

    move-object/from16 v5, v18

    .line 2578
    goto/16 :goto_0

    .line 2553
    :cond_18
    sget-boolean v18, Lcom/sun/javafx/css/parser/CSSParser;->$assertionsDisabled:Z

    if-nez v18, :cond_c

    new-instance v18, Ljava/lang/AssertionError;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 2563
    :cond_19
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2564
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2565
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x2

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    .line 2566
    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x3

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x3

    aget-object v20, v20, v21

    aput-object v20, v18, v19

    goto/16 :goto_6

    .line 2579
    .end local v8    # "nHorizontalTerms":I
    .end local v9    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v10    # "nVerticalTerms":I
    .end local v11    # "orientation":I
    .end local v12    # "radii":[[Lcom/sun/javafx/css/ParsedValueImpl;, "[[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v13    # "zero":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v14    # "hr":I
    .end local v15    # "vr":I
    .end local v16    # "lastTerm":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_1a
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v7

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v2
.end method

.method private parseFont(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3778
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v2, v13

    .line 3779
    .local v2, "next":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v13, v1

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 3780
    :goto_0
    move-object v13, v2

    if-eqz v13, :cond_0

    .line 3781
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v13

    .line 3782
    .local v3, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v13, v2

    move-object v14, v1

    iput-object v14, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 3783
    move-object v13, v2

    move-object v1, v13

    .line 3784
    move-object v13, v3

    move-object v2, v13

    .line 3785
    goto :goto_0

    .line 3788
    .end local v3    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v3, v13

    .line 3789
    .local v3, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v13, v3

    invoke-virtual {v13}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v13

    move v4, v13

    .line 3790
    .local v4, "ttype":I
    move v13, v4

    const/16 v14, 0xb

    if-eq v13, v14, :cond_1

    move v13, v4

    const/16 v14, 0xa

    if-eq v13, v14, :cond_1

    .line 3791
    move-object v13, v0

    move-object v14, v1

    const-string v15, "Expected \'<font-family>\'"

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3792
    :cond_1
    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontFamily(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v13

    move-object v5, v13

    .line 3794
    .local v5, "ffamily":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v1

    move-object v6, v13

    .line 3795
    .local v6, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v6, v14

    if-nez v13, :cond_2

    move-object v13, v0

    move-object v14, v1

    const-string v15, "Expected \'<size>\'"

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3796
    :cond_2
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v13, :cond_3

    move-object v13, v0

    move-object v14, v6

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    move-object v13, v0

    move-object v14, v6

    const-string v15, "Expected \'<size>\'"

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3801
    :cond_4
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v7, v14

    .local v7, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    if-eqz v13, :cond_8

    move-object v13, v7

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v13, :cond_8

    move-object v13, v7

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3802
    invoke-virtual {v13}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_8

    .line 3804
    move-object v13, v7

    move-object v1, v13

    .line 3806
    move-object v13, v7

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v6, v14

    if-nez v13, :cond_5

    move-object v13, v0

    move-object v14, v1

    const-string v15, "Expected \'<size>\'"

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3807
    :cond_5
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v13, :cond_6

    move-object v13, v0

    move-object v14, v6

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v13

    if-nez v13, :cond_7

    :cond_6
    move-object v13, v0

    move-object v14, v6

    const-string v15, "Expected \'<size>\'"

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3809
    :cond_7
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v3, v13

    .line 3812
    :cond_8
    move-object v13, v0

    move-object v14, v6

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v13

    move-object v8, v13

    .line 3813
    .local v8, "fsize":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljava/lang/Number;>;"
    move-object v13, v8

    if-nez v13, :cond_9

    move-object v13, v0

    move-object v14, v1

    const-string v15, "Expected \'<size>\'"

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3815
    :cond_9
    const/4 v13, 0x0

    move-object v9, v13

    .line 3816
    .local v9, "fstyle":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/text/FontPosture;>;"
    const/4 v13, 0x0

    move-object v10, v13

    .line 3817
    .local v10, "fweight":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/text/FontWeight;>;"
    const/4 v13, 0x0

    move-object v11, v13

    .line 3819
    .local v11, "fvariant":Ljava/lang/String;
    :cond_a
    :goto_1
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v6, v14

    if-eqz v13, :cond_f

    .line 3821
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v13, :cond_b

    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3822
    invoke-virtual {v13}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v13

    const/16 v14, 0xb

    if-ne v13, v14, :cond_b

    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3823
    invoke-virtual {v13}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3824
    invoke-virtual {v13}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 3825
    :cond_b
    move-object v13, v0

    move-object v14, v6

    const-string v15, "Expected \'<font-weight>\', \'<font-style>\' or \'<font-variant>\'"

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3827
    :cond_c
    move-object v13, v9

    if-nez v13, :cond_d

    move-object v13, v0

    move-object v14, v6

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v13

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v9, v14

    if-eqz v13, :cond_d

    goto :goto_1

    .line 3829
    :cond_d
    move-object v13, v11

    if-nez v13, :cond_e

    const-string v13, "small-caps"

    move-object v14, v6

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 3830
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v13}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    goto :goto_1

    .line 3831
    :cond_e
    move-object v13, v10

    if-nez v13, :cond_a

    move-object v13, v0

    move-object v14, v6

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontWeight(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v13

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v10, v14

    if-eqz v13, :cond_a

    goto :goto_1

    .line 3836
    :cond_f
    const/4 v13, 0x4

    new-array v13, v13, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v5

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move-object/from16 v16, v8

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x2

    move-object/from16 v16, v10

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x3

    move-object/from16 v16, v9

    aput-object v16, v14, v15

    move-object v12, v13

    .line 3837
    .local v12, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v13, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v12

    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v13

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseFontFamily(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3749
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 3768
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 3750
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v2, v5

    .line 3751
    .local v2, "token":Lcom/sun/javafx/css/parser/Token;
    const/4 v5, 0x0

    move-object v3, v5

    .line 3752
    .local v3, "text":Ljava/lang/String;
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    .line 3753
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    move-object v5, v2

    .line 3754
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    :cond_1
    move-object v5, v2

    .line 3755
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v3, v6

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 3756
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'<font-family>\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3758
    :cond_3
    move-object v5, v0

    move-object v6, v3

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3759
    .local v4, "fam":Ljava/lang/String;
    const-string v5, "inherit"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3760
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "inherit"

    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    goto :goto_0

    .line 3761
    :cond_4
    const-string v5, "serif"

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "sans-serif"

    move-object v6, v4

    .line 3762
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "cursive"

    move-object v6, v4

    .line 3763
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "fantasy"

    move-object v6, v4

    .line 3764
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "monospace"

    move-object v6, v4

    .line 3765
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3766
    :cond_5
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 3768
    :cond_6
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private parseFontSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3629
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v2, p1

    .local v2, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v2

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v1, v8

    .line 3670
    .end local v1    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v1

    .line 3630
    .restart local v1    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-object v8, v2

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v3, v8

    .line 3631
    .local v3, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v8, v3

    if-eqz v8, :cond_1

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move-object v8, v1

    move-object v9, v2

    const-string v10, "Expected \'<font-size>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3633
    :cond_2
    const/4 v8, 0x0

    move-object v4, v8

    .line 3634
    .local v4, "size":Lcom/sun/javafx/css/Size;
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_4

    .line 3635
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 3636
    .local v5, "ident":Ljava/lang/String;
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-wide v6, v8

    .line 3637
    .local v6, "value":D
    const-string v8, "inherit"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3638
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-wide v6, v8

    .line 3659
    :cond_3
    :goto_1
    move-wide v8, v6

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 3660
    new-instance v8, Lcom/sun/javafx/css/Size;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-wide v10, v6

    sget-object v12, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    move-object v4, v8

    .line 3665
    .end local v5    # "ident":Ljava/lang/String;
    .end local v6    # "value":D
    :cond_4
    move-object v8, v4

    if-nez v8, :cond_5

    .line 3666
    move-object v8, v1

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v8

    move-object v4, v8

    .line 3669
    :cond_5
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v5, v8

    .line 3670
    .local v5, "svalue":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontSizeConverter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v1, v8

    goto :goto_0

    .line 3639
    .local v5, "ident":Ljava/lang/String;
    .restart local v6    # "value":D
    :cond_6
    const-string v8, "xx-small"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3640
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    move-wide v6, v8

    goto :goto_1

    .line 3641
    :cond_7
    const-string v8, "x-small"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3642
    const-wide v8, 0x4052c00000000000L    # 75.0

    move-wide v6, v8

    goto :goto_1

    .line 3643
    :cond_8
    const-string v8, "small"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3644
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    move-wide v6, v8

    goto :goto_1

    .line 3645
    :cond_9
    const-string v8, "medium"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3646
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-wide v6, v8

    goto :goto_1

    .line 3647
    :cond_a
    const-string v8, "large"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3648
    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    move-wide v6, v8

    goto :goto_1

    .line 3649
    :cond_b
    const-string v8, "x-large"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3650
    const-wide v8, 0x4062c00000000000L    # 150.0

    move-wide v6, v8

    goto/16 :goto_1

    .line 3651
    :cond_c
    const-string v8, "xx-large"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3652
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    move-wide v6, v8

    goto/16 :goto_1

    .line 3653
    :cond_d
    const-string v8, "smaller"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3654
    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    move-wide v6, v8

    goto/16 :goto_1

    .line 3655
    :cond_e
    const-string v8, "larger"

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3656
    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    move-wide v6, v8

    goto/16 :goto_1
.end method

.method private parseFontStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/text/FontPosture;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3676
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 3698
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 3677
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v2, v5

    .line 3678
    .local v2, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 3679
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_1

    move-object v5, v2

    .line 3680
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 3681
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'<font-style>\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3683
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3684
    .local v3, "ident":Ljava/lang/String;
    sget-object v5, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    invoke-virtual {v5}, Ljavafx/scene/text/FontPosture;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3686
    .local v4, "posture":Ljava/lang/String;
    const-string v5, "normal"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3687
    sget-object v5, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    invoke-virtual {v5}, Ljavafx/scene/text/FontPosture;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3698
    :goto_1
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    goto :goto_0

    .line 3688
    :cond_3
    const-string v5, "italic"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3689
    sget-object v5, Ljavafx/scene/text/FontPosture;->ITALIC:Ljavafx/scene/text/FontPosture;

    invoke-virtual {v5}, Ljavafx/scene/text/FontPosture;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3690
    :cond_4
    const-string v5, "oblique"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3691
    sget-object v5, Ljavafx/scene/text/FontPosture;->ITALIC:Ljavafx/scene/text/FontPosture;

    invoke-virtual {v5}, Ljavafx/scene/text/FontPosture;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3692
    :cond_5
    const-string v5, "inherit"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3693
    const-string v5, "inherit"

    move-object v4, v5

    goto :goto_1

    .line 3695
    :cond_6
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private parseFontWeight(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/text/FontWeight;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3704
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 3744
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 3705
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v2, v5

    .line 3706
    .local v2, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 3707
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 3708
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'<font-weight>\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3710
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3711
    .local v3, "ident":Ljava/lang/String;
    sget-object v5, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3713
    .local v4, "weight":Ljava/lang/String;
    const-string v5, "inherit"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3714
    sget-object v5, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3744
    :goto_1
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;->getInstance()Lcom/sun/javafx/css/converters/FontConverter$FontWeightConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    goto :goto_0

    .line 3715
    :cond_3
    const-string v5, "normal"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3716
    sget-object v5, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3717
    :cond_4
    const-string v5, "bold"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3718
    sget-object v5, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3719
    :cond_5
    const-string v5, "bolder"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3720
    sget-object v5, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3721
    :cond_6
    const-string v5, "lighter"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3722
    sget-object v5, Ljavafx/scene/text/FontWeight;->LIGHT:Ljavafx/scene/text/FontWeight;

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3723
    :cond_7
    const-string v5, "100"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3724
    const/16 v5, 0x64

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3725
    :cond_8
    const-string v5, "200"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3726
    const/16 v5, 0xc8

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 3727
    :cond_9
    const-string v5, "300"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3728
    const/16 v5, 0x12c

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1

    .line 3729
    :cond_a
    const-string v5, "400"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3730
    const/16 v5, 0x190

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1

    .line 3731
    :cond_b
    const-string v5, "500"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3732
    const/16 v5, 0x1f4

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1

    .line 3733
    :cond_c
    const-string v5, "600"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3734
    const/16 v5, 0x258

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1

    .line 3735
    :cond_d
    const-string v5, "700"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3736
    const/16 v5, 0x2bc

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1

    .line 3737
    :cond_e
    const-string v5, "800"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3738
    const/16 v5, 0x320

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1

    .line 3739
    :cond_f
    const-string v5, "900"

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3740
    const/16 v5, 0x384

    invoke-static {v5}, Ljavafx/scene/text/FontWeight;->findByWeight(I)Ljavafx/scene/text/FontWeight;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/text/FontWeight;->name()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1

    .line 3742
    :cond_10
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'<font-weight>\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private parseFunction(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 1403
    .local v2, "fcn":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 1404
    move-object v3, v0

    move-object v4, v1

    const-string v5, "Expected function name"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1430
    :goto_1
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_2
    return-object v0

    .line 1402
    .end local v2    # "fcn":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1405
    .restart local v2    # "fcn":Ljava/lang/String;
    :cond_1
    const-string v3, "rgb"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1406
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->rgb(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 1407
    :cond_2
    const-string v3, "hsb"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1408
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->hsb(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 1409
    :cond_3
    const-string v3, "derive"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1410
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->derive(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 1411
    :cond_4
    const-string v3, "innershadow"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0xb

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1412
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->innershadow(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 1413
    :cond_5
    const-string v3, "dropshadow"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1414
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->dropshadow(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 1415
    :cond_6
    const-string v3, "linear-gradient"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1416
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->parseLinearGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_2

    .line 1417
    :cond_7
    const-string v3, "radial-gradient"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1418
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->parseRadialGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_2

    .line 1419
    :cond_8
    const-string v3, "image-pattern"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1420
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->parseImagePattern(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_2

    .line 1421
    :cond_9
    const-string v3, "repeating-image-pattern"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x17

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1422
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->parseRepeatingImagePattern(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_2

    .line 1423
    :cond_a
    const-string v3, "ladder"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1424
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->parseLadder(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_2

    .line 1425
    :cond_b
    const-string v3, "region"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1426
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->parseRegion(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_2

    .line 1428
    :cond_c
    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected function \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private parseImagePattern(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2214
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v14, :cond_3

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    :goto_0
    move-object v2, v14

    .line 2215
    .local v2, "fn":Ljava/lang/String;
    const-string v14, "image-pattern"

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v17, v2

    const/16 v18, 0x0

    const/16 v19, 0xd

    invoke-virtual/range {v14 .. v19}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_0

    .line 2216
    const-string v14, "Expected \'image-pattern\'"

    move-object v3, v14

    .line 2217
    .local v3, "msg":Ljava/lang/String;
    move-object v14, v0

    move-object v15, v1

    const-string v16, "Expected \'image-pattern\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2221
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v3, v15

    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    if-eqz v14, :cond_1

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v14, :cond_1

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2223
    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2224
    :cond_1
    move-object v14, v0

    move-object v15, v1

    const-string v16, "Expected \'<uri-string>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2228
    :cond_2
    move-object v14, v3

    move-object v4, v14

    .line 2230
    .local v4, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 2231
    .local v5, "uri":Ljava/lang/String;
    const/4 v14, 0x2

    new-array v14, v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x0

    new-instance v17, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v5

    .line 2232
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput-object v17, v15, v16

    move-object v6, v14

    .line 2235
    .local v6, "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v14, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v6

    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v7, v14

    .line 2238
    .local v7, "parsedURI":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-nez v14, :cond_4

    .line 2239
    const/4 v14, 0x1

    new-array v14, v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v8, v14

    .line 2240
    .local v8, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v8

    const/4 v15, 0x0

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    .line 2241
    new-instance v14, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v8

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v14

    .line 2283
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .end local v8    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    :goto_1
    return-object v0

    .line 2214
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v7    # "parsedURI":Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2246
    .restart local v2    # "fn":Ljava/lang/String;
    .restart local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v4    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v5    # "uri":Ljava/lang/String;
    .restart local v6    # "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v7    # "parsedURI":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_4
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v3, v15

    if-nez v14, :cond_5

    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<size>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2247
    :cond_5
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v9, v14

    .line 2249
    .local v9, "x":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v14, v3

    move-object v4, v14

    .line 2250
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v3, v15

    if-nez v14, :cond_6

    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<size>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2251
    :cond_6
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v10, v14

    .line 2253
    .local v10, "y":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v14, v3

    move-object v4, v14

    .line 2254
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v3, v15

    if-nez v14, :cond_7

    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<size>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2255
    :cond_7
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v11, v14

    .line 2257
    .local v11, "w":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v14, v3

    move-object v4, v14

    .line 2258
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v3, v15

    if-nez v14, :cond_8

    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<size>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2259
    :cond_8
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v12, v14

    .line 2262
    .local v12, "h":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-nez v14, :cond_9

    .line 2263
    const/4 v14, 0x5

    new-array v14, v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v14

    .line 2264
    .local v13, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v13

    const/4 v15, 0x0

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    .line 2265
    move-object v14, v13

    const/4 v15, 0x1

    move-object/from16 v16, v9

    aput-object v16, v14, v15

    .line 2266
    move-object v14, v13

    const/4 v15, 0x2

    move-object/from16 v16, v10

    aput-object v16, v14, v15

    .line 2267
    move-object v14, v13

    const/4 v15, 0x3

    move-object/from16 v16, v11

    aput-object v16, v14, v15

    .line 2268
    move-object v14, v13

    const/4 v15, 0x4

    move-object/from16 v16, v12

    aput-object v16, v14, v15

    .line 2269
    new-instance v14, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v13

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v14

    goto/16 :goto_1

    .line 2272
    .end local v13    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_9
    move-object v14, v3

    move-object v4, v14

    .line 2273
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v3, v15

    if-nez v14, :cond_a

    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<boolean>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2274
    :cond_a
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v8, v15

    .local v8, "token":Lcom/sun/javafx/css/parser/Token;
    if-eqz v14, :cond_b

    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_c

    :cond_b
    move-object v14, v0

    move-object v15, v3

    const-string v16, "Expected \'<boolean>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2276
    :cond_c
    const/4 v14, 0x6

    new-array v14, v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v14

    .line 2277
    .restart local v13    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v13

    const/4 v15, 0x0

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    .line 2278
    move-object v14, v13

    const/4 v15, 0x1

    move-object/from16 v16, v9

    aput-object v16, v14, v15

    .line 2279
    move-object v14, v13

    const/4 v15, 0x2

    move-object/from16 v16, v10

    aput-object v16, v14, v15

    .line 2280
    move-object v14, v13

    const/4 v15, 0x3

    move-object/from16 v16, v11

    aput-object v16, v14, v15

    .line 2281
    move-object v14, v13

    const/4 v15, 0x4

    move-object/from16 v16, v12

    aput-object v16, v14, v15

    .line 2282
    move-object v14, v13

    const/4 v15, 0x5

    new-instance v16, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v16, v14, v15

    .line 2283
    new-instance v14, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v13

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v14

    goto/16 :goto_1
.end method

.method private parseInsetsLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2393
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    move-object v2, v5

    .line 2394
    .local v2, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v5, 0x0

    move-object v3, v5

    .line 2396
    .local v3, "layer":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/geometry/Insets;>;"
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 2397
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize1to4(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v5

    move-object v4, v5

    .line 2398
    .local v4, "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v5

    .line 2399
    :goto_1
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v5, :cond_0

    .line 2400
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v2, v5

    goto :goto_1

    .line 2402
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v5

    move-object v2, v5

    .line 2403
    goto :goto_0

    .line 2404
    .end local v4    # "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseInsetsLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v7

    move v2, v7

    .line 2372
    .local v2, "nLayers":I
    move-object v7, v1

    move-object v3, v7

    .line 2373
    .local v3, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v7, 0x0

    move v4, v7

    .line 2374
    .local v4, "layer":I
    move v7, v2

    new-array v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v5, v7

    .line 2376
    .local v5, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/geometry/Insets;>;"
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 2377
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize1to4(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    move-object v6, v7

    .line 2378
    .local v6, "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v7, v5

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v9, v7, v8

    .line 2379
    :goto_1
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v7, :cond_0

    .line 2380
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v7

    goto :goto_1

    .line 2382
    :cond_0
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v7

    move-object v3, v7

    .line 2383
    goto :goto_0

    .line 2385
    .end local v6    # "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_1
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseLadder(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v2, v8

    .line 1190
    .local v2, "fn":Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_0

    const-string v8, "ladder"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1191
    :cond_0
    const-string v8, "Expected \'ladder\'"

    move-object v3, v8

    .line 1192
    .local v3, "msg":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'ladder\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1195
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    move-object v8, v1

    move-object v3, v8

    .line 1197
    .local v3, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v3, v9

    if-nez v8, :cond_2

    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'<color>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1198
    :cond_2
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v4, v8

    .line 1200
    .local v4, "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    move-object v8, v3

    move-object v5, v8

    .line 1202
    .local v5, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v3, v9

    if-nez v8, :cond_3

    .line 1203
    move-object v8, v0

    move-object v9, v5

    const-string v10, "Expected \'<color-stop>[, <color-stop>]+\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1205
    :cond_3
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseColorStops(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v6, v8

    .line 1207
    .local v6, "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    move-object v8, v6

    array-length v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v7, v8

    .line 1208
    .local v7, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    .line 1209
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x1

    move-object v12, v6

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1210
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    invoke-static {}, Lcom/sun/javafx/css/parser/LadderConverter;->getInstance()Lcom/sun/javafx/css/parser/LadderConverter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 1189
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    .end local v5    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    .end local v7    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private parseLinearGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1699
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v3, p1

    .local v3, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v15, :cond_11

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    :goto_0
    move-object v4, v15

    .line 1700
    .local v4, "fn":Ljava/lang/String;
    const-string v15, "linear-gradient"

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v18, v4

    const/16 v19, 0x0

    const/16 v20, 0xf

    invoke-virtual/range {v15 .. v20}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1701
    const-string v15, "Expected \'linear-gradient\'"

    move-object v5, v15

    .line 1702
    .local v5, "msg":Ljava/lang/String;
    move-object v15, v2

    move-object/from16 v16, v3

    const-string v17, "Expected \'linear-gradient\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1707
    .end local v5    # "msg":Ljava/lang/String;
    :cond_0
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v5, v16

    .local v5, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    if-eqz v15, :cond_1

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v15, :cond_1

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1709
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1710
    :cond_1
    move-object v15, v2

    move-object/from16 v16, v3

    const-string v17, "Expected \'from <point> to <point>\' or \'to <side-or-corner>\' or \'<cycle-method>\' or \'<color-stop>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1715
    :cond_2
    move-object v15, v5

    move-object v6, v15

    .line 1717
    .local v6, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v15, 0x0

    move-object v7, v15

    .line 1718
    .local v7, "startPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v15, 0x0

    move-object v8, v15

    .line 1720
    .local v8, "endPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const-string v15, "from"

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1722
    move-object v15, v5

    move-object v6, v15

    .line 1723
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v5, v16

    if-nez v15, :cond_3

    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<point>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1725
    :cond_3
    move-object v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object v9, v15

    .line 1727
    .local v9, "ptX":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v15, v5

    move-object v6, v15

    .line 1728
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v5, v16

    if-nez v15, :cond_4

    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<point>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1730
    :cond_4
    move-object v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object v10, v15

    .line 1732
    .local v10, "ptY":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x0

    move-object/from16 v18, v9

    aput-object v18, v16, v17

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x1

    move-object/from16 v18, v10

    aput-object v18, v16, v17

    move-object v7, v15

    .line 1734
    move-object v15, v5

    move-object v6, v15

    .line 1735
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v5, v16

    if-nez v15, :cond_5

    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'to\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1736
    :cond_5
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v15, :cond_6

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1737
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v15

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const-string v15, "to"

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v16, v0

    .line 1738
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    :cond_6
    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'to\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1740
    :cond_7
    move-object v15, v5

    move-object v6, v15

    .line 1741
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v5, v16

    if-nez v15, :cond_8

    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<point>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1743
    :cond_8
    move-object v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object v9, v15

    .line 1745
    move-object v15, v5

    move-object v6, v15

    .line 1746
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v5, v16

    if-nez v15, :cond_9

    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<point>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1748
    :cond_9
    move-object v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object v10, v15

    .line 1750
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x0

    move-object/from16 v18, v9

    aput-object v18, v16, v17

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x1

    move-object/from16 v18, v10

    aput-object v18, v16, v17

    move-object v8, v15

    .line 1752
    move-object v15, v5

    move-object v6, v15

    .line 1753
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v5, v15

    .line 1856
    .end local v9    # "ptX":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v10    # "ptY":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_a
    :goto_1
    move-object v15, v7

    if-nez v15, :cond_b

    move-object v15, v8

    if-nez v15, :cond_b

    .line 1858
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x0

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-wide/16 v22, 0x0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x1

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-wide/16 v22, 0x0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object v7, v15

    .line 1863
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x0

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-wide/16 v22, 0x0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x1

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object v8, v15

    .line 1869
    :cond_b
    move-object v15, v5

    if-eqz v15, :cond_c

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v15, :cond_c

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1871
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1872
    :cond_c
    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<cycle-method>\' or \'<color-stop>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1875
    :cond_d
    sget-object v15, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    move-object v9, v15

    .line 1876
    .local v9, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    const-string v15, "reflect"

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 1877
    sget-object v15, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    move-object v9, v15

    .line 1878
    move-object v15, v5

    move-object v6, v15

    .line 1879
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v5, v15

    .line 1886
    :cond_e
    :goto_2
    move-object v15, v5

    if-eqz v15, :cond_f

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v15, :cond_f

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1888
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1889
    :cond_f
    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<color-stop>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1892
    :cond_10
    move-object v15, v2

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->parseColorStops(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object v10, v15

    .line 1894
    .local v10, "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    const/4 v15, 0x5

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v15

    .line 1895
    .local v11, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v15, 0x0

    move v12, v15

    .line 1896
    .local v12, "index":I
    move-object v15, v11

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v7

    if-eqz v17, :cond_20

    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget-object v17, v17, v18

    :goto_3
    aput-object v17, v15, v16

    .line 1897
    move-object v15, v11

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v7

    if-eqz v17, :cond_21

    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget-object v17, v17, v18

    :goto_4
    aput-object v17, v15, v16

    .line 1898
    move-object v15, v11

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v8

    if-eqz v17, :cond_22

    move-object/from16 v17, v8

    const/16 v18, 0x0

    aget-object v17, v17, v18

    :goto_5
    aput-object v17, v15, v16

    .line 1899
    move-object v15, v11

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v8

    if-eqz v17, :cond_23

    move-object/from16 v17, v8

    const/16 v18, 0x1

    aget-object v17, v17, v18

    :goto_6
    aput-object v17, v15, v16

    .line 1900
    move-object v15, v11

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    new-instance v17, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v17

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/paint/CycleMethod;->name()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-class v22, Ljavafx/scene/paint/CycleMethod;

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v17, v15, v16

    .line 1901
    const/4 v15, 0x0

    move v13, v15

    .local v13, "n":I
    :goto_7
    move v15, v13

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_24

    move-object v15, v11

    move/from16 v16, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v10

    move/from16 v18, v13

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1699
    .end local v4    # "fn":Ljava/lang/String;
    .end local v5    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v7    # "startPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v8    # "endPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v9    # "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    .end local v10    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    .end local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "index":I
    .end local v13    # "n":I
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1755
    .restart local v4    # "fn":Ljava/lang/String;
    .restart local v5    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v6    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v7    # "startPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v8    # "endPt":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_12
    const-string v15, "to"

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1757
    move-object v15, v5

    move-object v6, v15

    .line 1758
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v5, v16

    if-eqz v15, :cond_13

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v15, :cond_13

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1760
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v15

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1761
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1762
    :cond_13
    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<side-or-corner>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1766
    :cond_14
    const/4 v15, 0x0

    move v9, v15

    .line 1767
    .local v9, "startX":I
    const/4 v15, 0x0

    move v10, v15

    .line 1768
    .local v10, "startY":I
    const/4 v15, 0x0

    move v11, v15

    .line 1769
    .local v11, "endX":I
    const/4 v15, 0x0

    move v12, v15

    .line 1771
    .local v12, "endY":I
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    .line 1773
    .local v13, "sideOrCorner1":Ljava/lang/String;
    const-string v15, "top"

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 1775
    const/16 v15, 0x64

    move v10, v15

    .line 1776
    const/4 v15, 0x0

    move v12, v15

    .line 1797
    :goto_8
    move-object v15, v5

    move-object v6, v15

    .line 1798
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v15, :cond_15

    .line 1799
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v5, v15

    .line 1800
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v15, :cond_1e

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1801
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v15

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e

    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1802
    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 1804
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 1808
    .local v14, "sideOrCorner2":Ljava/lang/String;
    const-string v15, "right"

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    move v15, v9

    if-nez v15, :cond_1a

    move v15, v11

    if-nez v15, :cond_1a

    .line 1811
    const/4 v15, 0x0

    move v9, v15

    .line 1812
    const/16 v15, 0x64

    move v11, v15

    .line 1836
    .line 1842
    .end local v14    # "sideOrCorner2":Ljava/lang/String;
    :cond_15
    :goto_9
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x0

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move/from16 v22, v9

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x1

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move/from16 v22, v10

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object v7, v15

    .line 1847
    const/4 v15, 0x2

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x0

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move/from16 v22, v11

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    const/16 v17, 0x1

    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move/from16 v22, v12

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sget-object v24, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v18, v16, v17

    move-object v8, v15

    .line 1852
    move-object v15, v5

    move-object v6, v15

    .line 1853
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v5, v15

    goto/16 :goto_1

    .line 1778
    :cond_16
    const-string v15, "bottom"

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1780
    const/4 v15, 0x0

    move v10, v15

    .line 1781
    const/16 v15, 0x64

    move v12, v15

    goto/16 :goto_8

    .line 1783
    :cond_17
    const-string v15, "right"

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 1785
    const/4 v15, 0x0

    move v9, v15

    .line 1786
    const/16 v15, 0x64

    move v11, v15

    goto/16 :goto_8

    .line 1788
    :cond_18
    const-string v15, "left"

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 1790
    const/16 v15, 0x64

    move v9, v15

    .line 1791
    const/4 v15, 0x0

    move v11, v15

    goto/16 :goto_8

    .line 1794
    :cond_19
    move-object v15, v2

    move-object/from16 v16, v5

    const-string v17, "Invalid \'<side-or-corner>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1813
    .restart local v14    # "sideOrCorner2":Ljava/lang/String;
    :cond_1a
    const-string v15, "left"

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    move v15, v9

    if-nez v15, :cond_1b

    move v15, v11

    if-nez v15, :cond_1b

    .line 1816
    const/16 v15, 0x64

    move v9, v15

    .line 1817
    const/4 v15, 0x0

    move v11, v15

    goto/16 :goto_9

    .line 1821
    :cond_1b
    const-string v15, "top"

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    move v15, v10

    if-nez v15, :cond_1c

    move v15, v12

    if-nez v15, :cond_1c

    .line 1824
    const/16 v15, 0x64

    move v10, v15

    .line 1825
    const/4 v15, 0x0

    move v12, v15

    goto/16 :goto_9

    .line 1826
    :cond_1c
    const-string v15, "bottom"

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    move v15, v10

    if-nez v15, :cond_1d

    move v15, v12

    if-nez v15, :cond_1d

    .line 1829
    const/4 v15, 0x0

    move v10, v15

    .line 1830
    const/16 v15, 0x64

    move v12, v15

    goto/16 :goto_9

    .line 1833
    :cond_1d
    move-object v15, v2

    move-object/from16 v16, v5

    const-string v17, "Invalid \'<side-or-corner>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1837
    .end local v14    # "sideOrCorner2":Ljava/lang/String;
    :cond_1e
    move-object v15, v2

    move-object/from16 v16, v6

    const-string v17, "Expected \'<side-or-corner>\'"

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1880
    .end local v10    # "startY":I
    .end local v11    # "endX":I
    .end local v12    # "endY":I
    .end local v13    # "sideOrCorner1":Ljava/lang/String;
    .local v9, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    :cond_1f
    const-string v15, "repeat"

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1881
    sget-object v15, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    move-object v9, v15

    .line 1882
    move-object v15, v5

    move-object v6, v15

    .line 1883
    move-object v15, v5

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v5, v15

    goto/16 :goto_2

    .line 1896
    .local v10, "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    .local v11, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .local v12, "index":I
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1897
    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1898
    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1899
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 1902
    .local v13, "n":I
    :cond_24
    new-instance v15, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v17, v11

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v2, v15

    .end local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v2
.end method

.method private parseMarginsLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Lcom/sun/javafx/scene/layout/region/Margins;",
            ">;[",
            "Lcom/sun/javafx/scene/layout/region/Margins;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2411
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v7

    move v2, v7

    .line 2413
    .local v2, "nLayers":I
    move-object v7, v1

    move-object v3, v7

    .line 2414
    .local v3, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v7, 0x0

    move v4, v7

    .line 2415
    .local v4, "layer":I
    move v7, v2

    new-array v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v5, v7

    .line 2417
    .local v5, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Lcom/sun/javafx/scene/layout/region/Margins;>;"
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 2418
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize1to4(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    move-object v6, v7

    .line 2419
    .local v6, "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v7, v5

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/Margins$Converter;->getInstance()Lcom/sun/javafx/scene/layout/region/Margins$Converter;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v9, v7, v8

    .line 2420
    :goto_1
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    if-eqz v7, :cond_0

    .line 2421
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v7

    goto :goto_1

    .line 2423
    :cond_0
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v7

    move-object v3, v7

    .line 2424
    goto :goto_0

    .line 2426
    .end local v6    # "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_1
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    invoke-static {}, Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parsePaintLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Ljavafx/scene/paint/Paint;",
            ">;[",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2323
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 2325
    .local v2, "nPaints":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v6

    .line 2327
    .local v3, "paints":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Paint;>;"
    move-object v6, v1

    move-object v4, v6

    .line 2328
    .local v4, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v6, 0x0

    move v5, v6

    .line 2331
    .local v5, "paint":I
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2332
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2333
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v0

    move-object v7, v4

    const-string v8, "Expected \'<paint>\'"

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2335
    :cond_2
    move-object v6, v3

    move v7, v5

    add-int/lit8 v5, v5, 0x1

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2337
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v4, v6

    .line 2338
    move-object v6, v4

    if-nez v6, :cond_0

    .line 2340
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseRadialGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2067
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v14, :cond_12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    :goto_0
    move-object v2, v14

    .line 2068
    .local v2, "fn":Ljava/lang/String;
    const-string v14, "radial-gradient"

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v17, v2

    const/16 v18, 0x0

    const/16 v19, 0xf

    invoke-virtual/range {v14 .. v19}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_0

    .line 2069
    const-string v14, "Expected \'radial-gradient\'"

    move-object v3, v14

    .line 2070
    .local v3, "msg":Ljava/lang/String;
    move-object v14, v0

    move-object v15, v1

    const-string v16, "Expected \'radial-gradient\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2075
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    if-eqz v14, :cond_1

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v14, :cond_1

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2077
    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2078
    :cond_1
    move-object v14, v0

    move-object v15, v1

    const-string v16, "Expected \'focus-angle <angle>\' or \'focus-distance <percentage>\' or \'center <point>\' or \'radius [<length> | <percentage>]\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2085
    :cond_2
    move-object v14, v3

    move-object v4, v14

    .line 2086
    .local v4, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v14, 0x0

    move-object v5, v14

    .line 2087
    .local v5, "focusAngle":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v14, 0x0

    move-object v6, v14

    .line 2088
    .local v6, "focusDistance":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v14, 0x0

    move-object v7, v14

    .line 2089
    .local v7, "centerPoint":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v14, 0x0

    move-object v8, v14

    .line 2091
    .local v8, "radius":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const-string v14, "focus-angle"

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2093
    move-object v14, v3

    move-object v4, v14

    .line 2094
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-eqz v14, :cond_3

    move-object v14, v0

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2095
    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<angle>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2097
    :cond_4
    move-object v14, v0

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v14

    move-object v9, v14

    .line 2098
    .local v9, "angle":Lcom/sun/javafx/css/Size;
    sget-object v14, Lcom/sun/javafx/css/parser/CSSParser$1;->$SwitchMap$com$sun$javafx$css$SizeUnits:[I

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/javafx/css/SizeUnits;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 2106
    move-object v14, v0

    move-object v15, v3

    const-string v16, "Expected [deg | rad | grad | turn ]"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2108
    :goto_1
    new-instance v14, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v9

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v5, v14

    .line 2110
    move-object v14, v3

    move-object v4, v14

    .line 2111
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-nez v14, :cond_5

    .line 2112
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'focus-distance <percentage>\' or \'center <point>\' or \'radius [<length> | <percentage>]\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2118
    .end local v9    # "angle":Lcom/sun/javafx/css/Size;
    :cond_5
    const-string v14, "focus-distance"

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2120
    move-object v14, v3

    move-object v4, v14

    .line 2121
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-eqz v14, :cond_6

    move-object v14, v0

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2122
    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v14

    if-nez v14, :cond_7

    :cond_6
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<percentage>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2124
    :cond_7
    move-object v14, v0

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v14

    move-object v9, v14

    .line 2128
    .local v9, "distance":Lcom/sun/javafx/css/Size;
    sget-object v14, Lcom/sun/javafx/css/parser/CSSParser$1;->$SwitchMap$com$sun$javafx$css$SizeUnits:[I

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/javafx/css/SizeUnits;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 2132
    move-object v14, v0

    move-object v15, v3

    const-string v16, "Expected \'%\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2134
    :goto_2
    new-instance v14, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v9

    const/16 v17, 0x0

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v6, v14

    .line 2136
    move-object v14, v3

    move-object v4, v14

    .line 2137
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-nez v14, :cond_8

    .line 2138
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'center <center>\' or \'radius <length>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2143
    .end local v9    # "distance":Lcom/sun/javafx/css/Size;
    :cond_8
    const-string v14, "center"

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2145
    move-object v14, v3

    move-object v4, v14

    .line 2146
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-nez v14, :cond_9

    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<point>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2148
    :cond_9
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v9, v14

    .line 2150
    .local v9, "ptX":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v14, v3

    move-object v4, v14

    .line 2151
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-nez v14, :cond_a

    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<point>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2153
    :cond_a
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v10, v14

    .line 2155
    .local v10, "ptY":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v14, 0x2

    new-array v14, v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    move-object/from16 v17, v9

    aput-object v17, v15, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x1

    move-object/from16 v17, v10

    aput-object v17, v15, v16

    move-object v7, v14

    .line 2157
    move-object v14, v3

    move-object v4, v14

    .line 2158
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-nez v14, :cond_b

    .line 2159
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'radius [<length> | <percentage>]\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2162
    .end local v9    # "ptX":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v10    # "ptY":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_b
    const-string v14, "radius"

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2164
    move-object v14, v3

    move-object v4, v14

    .line 2165
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-eqz v14, :cond_c

    move-object v14, v0

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2166
    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v14

    if-nez v14, :cond_d

    :cond_c
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'[<length> | <percentage>]\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2168
    :cond_d
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v8, v14

    .line 2170
    move-object v14, v3

    move-object v4, v14

    .line 2171
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v3, v15

    if-nez v14, :cond_e

    .line 2172
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'radius [<length> | <percentage>]\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2175
    :cond_e
    sget-object v14, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    move-object v9, v14

    .line 2176
    .local v9, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    const-string v14, "reflect"

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 2177
    sget-object v14, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    move-object v9, v14

    .line 2178
    move-object v14, v3

    move-object v4, v14

    .line 2179
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v14

    .line 2186
    :cond_f
    :goto_3
    move-object v14, v3

    if-eqz v14, :cond_10

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v14, :cond_10

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2188
    invoke-virtual {v14}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 2189
    :cond_10
    move-object v14, v0

    move-object v15, v4

    const-string v16, "Expected \'<color-stop>\'"

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2192
    :cond_11
    move-object v14, v0

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->parseColorStops(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    move-object v10, v14

    .line 2194
    .local v10, "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    const/4 v14, 0x6

    move-object v15, v10

    array-length v15, v15

    add-int/2addr v14, v15

    new-array v14, v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v14

    .line 2195
    .local v11, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v14, 0x0

    move v12, v14

    .line 2196
    .local v12, "index":I
    move-object v14, v11

    move v15, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v5

    aput-object v16, v14, v15

    .line 2197
    move-object v14, v11

    move v15, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v6

    aput-object v16, v14, v15

    .line 2198
    move-object v14, v11

    move v15, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v7

    if-eqz v16, :cond_14

    move-object/from16 v16, v7

    const/16 v17, 0x0

    aget-object v16, v16, v17

    :goto_4
    aput-object v16, v14, v15

    .line 2199
    move-object v14, v11

    move v15, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v7

    if-eqz v16, :cond_15

    move-object/from16 v16, v7

    const/16 v17, 0x1

    aget-object v16, v16, v17

    :goto_5
    aput-object v16, v14, v15

    .line 2200
    move-object v14, v11

    move v15, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v8

    aput-object v16, v14, v15

    .line 2201
    move-object v14, v11

    move v15, v12

    add-int/lit8 v12, v12, 0x1

    new-instance v16, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/paint/CycleMethod;->name()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    const-class v21, Ljavafx/scene/paint/CycleMethod;

    invoke-direct/range {v20 .. v21}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v16, v14, v15

    .line 2202
    const/4 v14, 0x0

    move v13, v14

    .local v13, "n":I
    :goto_6
    move v14, v13

    move-object v15, v10

    array-length v15, v15

    if-ge v14, v15, :cond_16

    move-object v14, v11

    move v15, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v16, v10

    move/from16 v17, v13

    aget-object v16, v16, v17

    aput-object v16, v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2067
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v5    # "focusAngle":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v6    # "focusDistance":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v7    # "centerPoint":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v8    # "radius":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v9    # "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    .end local v10    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    .end local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "index":I
    .end local v13    # "n":I
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2104
    .restart local v2    # "fn":Ljava/lang/String;
    .restart local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v4    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v5    # "focusAngle":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v6    # "focusDistance":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v7    # "centerPoint":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v8    # "radius":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .local v9, "angle":Lcom/sun/javafx/css/Size;
    :pswitch_0
    goto/16 :goto_1

    .line 2130
    .local v9, "distance":Lcom/sun/javafx/css/Size;
    :pswitch_1
    goto/16 :goto_2

    .line 2180
    .local v9, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    :cond_13
    const-string v14, "repeat"

    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v15}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 2181
    sget-object v14, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    move-object v9, v14

    .line 2182
    move-object v14, v3

    move-object v4, v14

    .line 2183
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v14

    goto/16 :goto_3

    .line 2198
    .restart local v10    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    .restart local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v12    # "index":I
    :cond_14
    const/16 v16, 0x0

    goto :goto_4

    .line 2199
    :cond_15
    const/16 v16, 0x0

    goto :goto_5

    .line 2203
    .restart local v13    # "n":I
    :cond_16
    new-instance v14, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v11

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v14

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 2098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2128
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method

.method private parseRegion(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3565
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v5, :cond_4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v2, v5

    .line 3566
    .local v2, "fn":Ljava/lang/String;
    const-string v5, "region"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3567
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'region\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3570
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v5

    .line 3571
    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v3

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'region(\"<styleclass-or-id-string>\")\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3573
    :cond_1
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v5, :cond_2

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3574
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3575
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3576
    invoke-virtual {v5}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v5, v0

    move-object v6, v1

    const-string v7, "Expected \'region(\"<styleclass-or-id-string>\")\'"

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3578
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPECIAL-REGION-URL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3579
    .local v4, "styleClassOrId":Ljava/lang/String;
    new-instance v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 3565
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "styleClassOrId":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private parseRepeatStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")[",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/layout/BackgroundRepeat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2938
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v3, v7

    .local v3, "yAxis":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v2, v6

    .line 2940
    .local v2, "xAxis":Ljavafx/scene/layout/BackgroundRepeat;
    move-object v6, v1

    move-object v4, v6

    .line 2942
    .local v4, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2943
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2944
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2945
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v6, v0

    move-object v7, v4

    const-string v8, "Expected \'<repeat-style>\'"

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2947
    :cond_1
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2948
    .local v5, "text":Ljava/lang/String;
    const-string v6, "repeat-x"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2949
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v2, v6

    .line 2950
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    .line 2973
    :goto_0
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v4, v7

    if-eqz v6, :cond_2

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v6, :cond_2

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2975
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2976
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2977
    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2979
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v6}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2980
    const-string v6, "repeat-x"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2981
    move-object v6, v0

    move-object v7, v4

    const-string v8, "Unexpected \'repeat-x\'"

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2999
    :cond_2
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x0

    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v2

    .line 3000
    invoke-virtual {v11}, Ljavafx/scene/layout/BackgroundRepeat;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-class v14, Ljavafx/scene/layout/BackgroundRepeat;

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v9, v7, v8

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const/4 v8, 0x1

    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v3

    .line 3001
    invoke-virtual {v11}, Ljavafx/scene/layout/BackgroundRepeat;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    const-class v14, Ljavafx/scene/layout/BackgroundRepeat;

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v9, v7, v8

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 2951
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_3
    const-string v6, "repeat-y"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2952
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v2, v6

    .line 2953
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_0

    .line 2954
    :cond_4
    const-string v6, "repeat"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2955
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v2, v6

    .line 2956
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_0

    .line 2957
    :cond_5
    const-string v6, "space"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2958
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v2, v6

    .line 2959
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_0

    .line 2960
    :cond_6
    const-string v6, "round"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2961
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v2, v6

    .line 2962
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_0

    .line 2963
    :cond_7
    const-string v6, "no-repeat"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2964
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v2, v6

    .line 2965
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_0

    .line 2966
    :cond_8
    const-string v6, "stretch"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2967
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v2, v6

    .line 2968
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_0

    .line 2970
    :cond_9
    move-object v6, v0

    move-object v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected  \'<repeat-style>\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2982
    :cond_a
    const-string v6, "repeat-y"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2983
    move-object v6, v0

    move-object v7, v4

    const-string v8, "Unexpected \'repeat-y\'"

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2984
    :cond_b
    const-string v6, "repeat"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2985
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_1

    .line 2986
    :cond_c
    const-string v6, "space"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2987
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_1

    .line 2988
    :cond_d
    const-string v6, "round"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2989
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_1

    .line 2990
    :cond_e
    const-string v6, "no-repeat"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2991
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_1

    .line 2992
    :cond_f
    const-string v6, "stretch"

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2993
    sget-object v6, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object v3, v6

    goto/16 :goto_1

    .line 2995
    :cond_10
    move-object v6, v0

    move-object v7, v4

    const-string v8, "Expected  \'<repeat-style>\'"

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private parseRepeatingImagePattern(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2292
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_3

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v2, v8

    .line 2293
    .local v2, "fn":Ljava/lang/String;
    const-string v8, "repeating-image-pattern"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x0

    const/16 v13, 0x17

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2294
    const-string v8, "Expected \'repeating-image-pattern\'"

    move-object v3, v8

    .line 2295
    .local v3, "msg":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'repeating-image-pattern\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2299
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v3, v9

    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    if-eqz v8, :cond_1

    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_1

    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 2301
    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2302
    :cond_1
    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'<uri-string>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2306
    :cond_2
    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 2307
    .local v4, "uri":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    new-instance v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v4

    .line 2308
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput-object v11, v9, v10

    move-object v5, v8

    .line 2311
    .local v5, "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v6, v8

    .line 2312
    .local v6, "parsedURI":Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v7, v8

    .line 2313
    .local v7, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v6

    aput-object v10, v8, v9

    .line 2314
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v7

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 2292
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v6    # "parsedURI":Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v7    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v0

    move-object v5, v1

    const-string v6, "Expected \'<size>\'"

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 937
    :cond_1
    const/4 v4, 0x0

    move-object v2, v4

    .line 939
    .local v2, "value":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_2

    .line 941
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v4

    move-object v3, v4

    .line 942
    .local v3, "size":Lcom/sun/javafx/css/Size;
    new-instance v4, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v2, v4

    .line 951
    .end local v3    # "size":Lcom/sun/javafx/css/Size;
    :goto_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 946
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 947
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object v2, v4

    goto :goto_0
.end method

.method private parseSize1to4(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")[",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v5, v1

    move-object v2, v5

    .line 2350
    .local v2, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v5

    .line 2351
    .local v3, "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v5, 0x0

    move v4, v5

    .line 2353
    .local v4, "side":I
    :goto_0
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    move-object v5, v2

    if-eqz v5, :cond_0

    .line 2354
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2355
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v2, v5

    goto :goto_0

    .line 2358
    :cond_0
    move v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 2359
    :cond_1
    move v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 2360
    :cond_2
    move v5, v4

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    move-object v5, v3

    const/4 v6, 0x3

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 2362
    :cond_3
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseSizeSeries(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")[",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Lcom/sun/javafx/css/Size;",
            "Lcom/sun/javafx/css/Size;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2433
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-nez v7, :cond_0

    move-object v7, v0

    move-object v8, v1

    const-string v9, "Parse error"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2435
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 2437
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/ParsedValueImpl<Lcom/sun/javafx/css/Size;Lcom/sun/javafx/css/Size;>;>;"
    move-object v7, v1

    move-object v3, v7

    .line 2438
    .local v3, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 2439
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v4, v7

    .line 2440
    .local v4, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v7

    move v5, v7

    .line 2441
    .local v5, "ttype":I
    move v7, v5

    packed-switch v7, :pswitch_data_0

    .line 2460
    move-object v7, v0

    move-object v8, v1

    const-string v9, "expected series of <size>"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 2462
    :goto_1
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v7

    .line 2463
    goto :goto_0

    .line 2456
    :pswitch_0
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v6, v7

    .line 2457
    .local v6, "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v7, v2

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 2458
    goto :goto_1

    .line 2464
    .end local v4    # "token":Lcom/sun/javafx/css/parser/Token;
    .end local v5    # "ttype":I
    .end local v6    # "sizeValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_1
    move-object v7, v2

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 2441
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseStrokeLineCap(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/shape/StrokeLineCap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3450
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->getKeyword(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 3452
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "square"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "butt"

    move-object v4, v2

    .line 3453
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "round"

    move-object v4, v2

    .line 3454
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3456
    :cond_0
    new-instance v3, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    new-instance v6, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-class v8, Ljavafx/scene/shape/StrokeLineCap;

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v3

    .line 3458
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private parseStrokeLineJoin(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3416
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->getKeyword(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 3418
    .local v2, "keyword":Ljava/lang/String;
    const-string v7, "miter"

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "bevel"

    move-object v8, v2

    .line 3419
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "round"

    move-object v8, v2

    .line 3420
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3422
    :cond_0
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v2

    new-instance v10, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-class v12, Ljavafx/scene/shape/StrokeLineJoin;

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v3, v7

    .line 3425
    .local v3, "strokeLineJoin":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/shape/StrokeLineJoin;>;"
    const/4 v7, 0x0

    move-object v4, v7

    .line 3426
    .local v4, "strokeMiterLimit":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljava/lang/Number;>;"
    const-string v7, "miter"

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3428
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v5, v7

    .line 3429
    .local v5, "next":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v5

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3431
    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->isSize(Lcom/sun/javafx/css/parser/Token;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3433
    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    iput-object v8, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 3434
    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    move-object v6, v7

    .line 3435
    .local v6, "sizeVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v4, v7

    .line 3440
    .end local v5    # "next":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "sizeVal":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x1

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v0, v7

    .line 3442
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .end local v3    # "strokeLineJoin":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/shape/StrokeLineJoin;>;"
    .end local v4    # "strokeMiterLimit":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljava/lang/Number;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_2
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method private parseStrokeType(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/shape/StrokeType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3395
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/parser/CSSParser;->getKeyword(Lcom/sun/javafx/css/parser/CSSParser$Term;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 3398
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "centered"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "inside"

    move-object v4, v2

    .line 3399
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "outside"

    move-object v4, v2

    .line 3400
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3402
    :cond_0
    new-instance v3, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    new-instance v6, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-class v8, Ljavafx/scene/shape/StrokeType;

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v3

    .line 3405
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private parseURI(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3586
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    const-string v6, "Expected \'url(\"<uri-string>\")\'"

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3588
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3589
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3590
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 3591
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v0

    move-object v5, v1

    const-string v6, "Expected \'url(\"<uri-string>\")\'"

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3593
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 3594
    .local v2, "uri":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    .line 3595
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v3, v4

    .line 3598
    .local v3, "uriValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v4, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v3

    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private parseURILayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3606
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v6

    move v2, v6

    .line 3608
    .local v2, "nLayers":I
    move-object v6, v1

    move-object v3, v6

    .line 3609
    .local v3, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    const/4 v6, 0x0

    move v4, v6

    .line 3610
    .local v4, "layer":I
    move v6, v2

    new-array v6, v6, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v5, v6

    .line 3612
    .local v5, "layers":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 3613
    move-object v6, v5

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseURI(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3614
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/parser/CSSParser;->nextLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 3617
    :cond_0
    new-instance v6, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private point(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 1375
    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v7

    const/16 v8, 0x22

    if-eq v7, v8, :cond_1

    :cond_0
    move-object v7, v0

    move-object v8, v1

    const-string v9, "Expected \'(<number>, <number>)\'"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1377
    :cond_1
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 1378
    .local v2, "fn":Ljava/lang/String;
    move-object v7, v2

    if-eqz v7, :cond_2

    const-string v7, "("

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1379
    :cond_2
    const-string v7, "Expected \'(\'"

    move-object v3, v7

    .line 1380
    .local v3, "msg":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v1

    const-string v9, "Expected \'(\'"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1383
    .end local v3    # "msg":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    move-object v3, v7

    .line 1386
    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v3, v8

    if-nez v7, :cond_4

    move-object v7, v0

    move-object v8, v1

    const-string v9, "Expected \'<number>\'"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1388
    :cond_4
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    move-object v4, v7

    .line 1390
    .local v4, "ptX":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v7, v3

    move-object v5, v7

    .line 1392
    .local v5, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v3, v8

    if-nez v7, :cond_5

    move-object v7, v0

    move-object v8, v5

    const-string v9, "Expected \'<number>\'"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1394
    :cond_5
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v7

    move-object v6, v7

    .line 1396
    .local v6, "ptY":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v7, 0x2

    new-array v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v6

    aput-object v10, v8, v9

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private radialGradient(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1911
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v3, p1

    .local v3, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1c

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    :goto_0
    move-object/from16 v4, v19

    .line 1912
    .local v4, "fn":Ljava/lang/String;
    move-object/from16 v19, v4

    if-eqz v19, :cond_0

    const-string v19, "radial"

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 1913
    :cond_0
    const-string v19, "Expected \'radial\'"

    move-object/from16 v5, v19

    .line 1914
    .local v5, "msg":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const-string v21, "Expected \'radial\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1917
    .end local v5    # "msg":Ljava/lang/String;
    :cond_1
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v20, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v19 .. v20}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1918
    sget-object v19, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    const-string v22, "radial gradient"

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/css/parser/CSSParser;->formatDeprecatedMessage(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1921
    :cond_2
    move-object/from16 v19, v3

    move-object/from16 v5, v19

    .line 1922
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v3

    move-object/from16 v6, v19

    .line 1924
    .local v6, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const-string v21, "Expected \'focus-angle <number>\', \'focus-distance <number>\', \'center (<number>,<number>)\' or \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1925
    :cond_3
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v21, "Expected \'focus-angle <number>\', \'focus-distance <number>\', \'center (<number>,<number>)\' or \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1928
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v7, v19

    .line 1929
    .local v7, "focusAngle":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v19

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1930
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v8, v19

    .line 1931
    .local v8, "keyword":Ljava/lang/String;
    const-string v19, "focus-angle"

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1933
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1934
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_5

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'<number>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1935
    :cond_5
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'<number>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1937
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v7, v19

    .line 1939
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1940
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_7

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'focus-distance <number>\', \'center (<number>,<number>)\' or \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1941
    :cond_7
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v21, "Expected \'focus-distance <number>\', \'center (<number>,<number>)\' or \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1945
    .end local v8    # "keyword":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    move-object/from16 v8, v19

    .line 1946
    .local v8, "focusDistance":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v19

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1947
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v9, v19

    .line 1948
    .local v9, "keyword":Ljava/lang/String;
    const-string v19, "focus-distance"

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1950
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1951
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_9

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'<number>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1952
    :cond_9
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'<number>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1954
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v8, v19

    .line 1956
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1957
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_b

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected  \'center (<number>,<number>)\' or \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1958
    :cond_b
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-nez v19, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v21, "Expected  \'center (<number>,<number>)\' or \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1962
    .end local v9    # "keyword":Ljava/lang/String;
    :cond_c
    const/16 v19, 0x0

    move-object/from16 v9, v19

    .line 1963
    .local v9, "centerPoint":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v19

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 1964
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1965
    .local v10, "keyword":Ljava/lang/String;
    const-string v19, "center"

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 1967
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1968
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_d

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'(<number>,<number>)\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1969
    :cond_d
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    .line 1970
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :cond_e
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v21, "Expected \'(<number>,<number>)\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1972
    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->point(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v9, v19

    .line 1974
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1975
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_10

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1976
    :cond_10
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-nez v19, :cond_11

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v21, "Expected \'<size>\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1980
    .end local v10    # "keyword":Ljava/lang/String;
    :cond_11
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1982
    .local v10, "radius":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1983
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_12

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'stops\' keyword"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1984
    :cond_12
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    .line 1985
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v19

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    :cond_13
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v21, "Expected \'stops\' keyword"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1987
    :cond_14
    const-string v19, "stops"

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_15

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    const-string v21, "Expected \'stops\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1989
    :cond_15
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 1990
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-nez v19, :cond_16

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const-string v21, "Expected \'(<number>, <number>)\'"

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1992
    :cond_16
    const/16 v19, 0x0

    move/from16 v11, v19

    .line 1993
    .local v11, "nStops":I
    move-object/from16 v19, v5

    move-object/from16 v12, v19

    .line 1995
    .local v12, "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_17
    add-int/lit8 v11, v11, 0x1

    .line 1997
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v12, v20

    if-eqz v19, :cond_18

    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    .line 1998
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 2000
    :cond_18
    move/from16 v19, v11

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 2001
    .local v13, "stops":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v19, 0x0

    move/from16 v14, v19

    .line 2003
    .local v14, "stopIndex":I
    :cond_19
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->stop(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v15, v19

    .line 2004
    .local v15, "stop":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Stop;>;"
    move-object/from16 v19, v15

    if-eqz v19, :cond_1a

    move-object/from16 v19, v13

    move/from16 v20, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v21, v15

    aput-object v21, v19, v20

    .line 2005
    :cond_1a
    move-object/from16 v19, v5

    move-object/from16 v6, v19

    .line 2006
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v19, v0

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v5, v20

    if-eqz v19, :cond_1b

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v19, v0

    .line 2007
    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    .line 2010
    :cond_1b
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/css/parser/CSSParser;->cycleMethod(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v15, v19

    .line 2012
    .local v15, "cycleMethod":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/paint/CycleMethod;>;"
    move-object/from16 v19, v15

    if-nez v19, :cond_1e

    .line 2014
    new-instance v19, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    sget-object v21, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/paint/CycleMethod;->name()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    const-class v24, Ljavafx/scene/paint/CycleMethod;

    invoke-direct/range {v23 .. v24}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v15, v19

    .line 2018
    move-object/from16 v19, v5

    if-eqz v19, :cond_1d

    .line 2019
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 2041
    :goto_1
    const/16 v19, 0x6

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v0

    move-object/from16 v16, v19

    .line 2042
    .local v16, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v19, 0x0

    move/from16 v17, v19

    .line 2043
    .local v17, "index":I
    move-object/from16 v19, v16

    move/from16 v20, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v7

    aput-object v21, v19, v20

    .line 2044
    move-object/from16 v19, v16

    move/from16 v20, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v8

    aput-object v21, v19, v20

    .line 2045
    move-object/from16 v19, v16

    move/from16 v20, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v9

    if-eqz v21, :cond_1f

    move-object/from16 v21, v9

    const/16 v22, 0x0

    aget-object v21, v21, v22

    :goto_2
    aput-object v21, v19, v20

    .line 2046
    move-object/from16 v19, v16

    move/from16 v20, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v9

    if-eqz v21, :cond_20

    move-object/from16 v21, v9

    const/16 v22, 0x1

    aget-object v21, v21, v22

    :goto_3
    aput-object v21, v19, v20

    .line 2047
    move-object/from16 v19, v16

    move/from16 v20, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v10

    aput-object v21, v19, v20

    .line 2048
    move-object/from16 v19, v16

    move/from16 v20, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v15

    aput-object v21, v19, v20

    .line 2049
    const/16 v19, 0x0

    move/from16 v18, v19

    .local v18, "n":I
    :goto_4
    move/from16 v19, v18

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_21

    move-object/from16 v19, v16

    move/from16 v20, v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v13

    move/from16 v22, v18

    aget-object v21, v21, v22

    aput-object v21, v19, v20

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1911
    .end local v4    # "fn":Ljava/lang/String;
    .end local v5    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v7    # "focusAngle":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v8    # "focusDistance":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v9    # "centerPoint":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v10    # "radius":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v11    # "nStops":I
    .end local v12    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v13    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v14    # "stopIndex":I
    .end local v15    # "cycleMethod":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/paint/CycleMethod;>;"
    .end local v16    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v17    # "index":I
    .end local v18    # "n":I
    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2026
    .restart local v4    # "fn":Ljava/lang/String;
    .restart local v5    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v6    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v7    # "focusAngle":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v8    # "focusDistance":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v9    # "centerPoint":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v10    # "radius":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v11    # "nStops":I
    .restart local v12    # "temp":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v13    # "stops":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v14    # "stopIndex":I
    .restart local v15    # "cycleMethod":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<Ljava/lang/String;Ljavafx/scene/paint/CycleMethod;>;"
    :cond_1d
    move-object/from16 v19, v3

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 2027
    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    goto/16 :goto_1

    .line 2037
    :cond_1e
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 2038
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextLayer:Lcom/sun/javafx/css/parser/CSSParser$Term;

    goto/16 :goto_1

    .line 2045
    .restart local v16    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v17    # "index":I
    :cond_1f
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 2046
    :cond_20
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2050
    .restart local v18    # "n":I
    :cond_21
    new-instance v19, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v16

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v2, v19

    .end local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v2
.end method

.method private reportError(Lcom/sun/javafx/css/CssError;)V
    .locals 6

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "error":Lcom/sun/javafx/css/CssError;
    const/4 v3, 0x0

    move-object v2, v3

    .line 443
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v2, v4

    if-eqz v3, :cond_0

    .line 444
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 446
    :cond_0
    return-void
.end method

.method private reportException(Ljava/lang/Exception;)V
    .locals 9

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Exception;
    sget-object v5, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v6, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    move-object v2, v5

    .line 460
    .local v2, "stea":[Ljava/lang/StackTraceElement;
    move-object v5, v2

    array-length v5, v5

    if-lez v5, :cond_1

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Please report "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 463
    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at:"

    .line 464
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 465
    const/4 v5, 0x0

    move v4, v5

    .line 466
    .local v4, "end":I
    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 468
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 469
    .line 474
    :cond_0
    sget-object v5, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 477
    .end local v2    # "stea":[Ljava/lang/StackTraceElement;
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "end":I
    :cond_1
    return-void

    .line 471
    .restart local v2    # "stea":[Ljava/lang/StackTraceElement;
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    .restart local v4    # "end":I
    :cond_2
    move-object v5, v3

    const-string v6, "\n\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v6, v6, v7

    .line 472
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0
.end method

.method private rgb(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 977
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v3, p1

    .local v3, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v23

    :goto_0
    move-object/from16 v4, v23

    .line 978
    .local v4, "fn":Ljava/lang/String;
    move-object/from16 v23, v4

    if-eqz v23, :cond_0

    const-string v23, "rgb"

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v26, v4

    const/16 v27, 0x0

    const/16 v28, 0x3

    invoke-virtual/range {v23 .. v28}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v23

    if-nez v23, :cond_1

    .line 979
    :cond_0
    const-string v23, "Expected \'rgb\' or \'rgba\'"

    move-object/from16 v5, v23

    .line 980
    .local v5, "msg":Ljava/lang/String;
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const-string v25, "Expected \'rgb\' or \'rgba\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 983
    .end local v5    # "msg":Ljava/lang/String;
    :cond_1
    move-object/from16 v23, v3

    move-object/from16 v5, v23

    .line 986
    .local v5, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v5, v24

    if-nez v23, :cond_2

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const-string v25, "Expected \'<number>\' or \'<percentage>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 987
    :cond_2
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v6, v24

    .local v6, "rtok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_3

    move-object/from16 v23, v6

    .line 988
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    move-object/from16 v23, v6

    .line 989
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    const-string v25, "Expected \'<number>\' or \'<percentage>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 991
    :cond_4
    move-object/from16 v23, v5

    move-object/from16 v3, v23

    .line 993
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v5, v24

    if-nez v23, :cond_5

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const-string v25, "Expected \'<number>\' or \'<percentage>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 994
    :cond_5
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v7, v24

    .local v7, "gtok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_6

    move-object/from16 v23, v7

    .line 995
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    move-object/from16 v23, v7

    .line 996
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    :cond_6
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    const-string v25, "Expected \'<number>\' or \'<percentage>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 998
    :cond_7
    move-object/from16 v23, v5

    move-object/from16 v3, v23

    .line 1000
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v5, v24

    if-nez v23, :cond_8

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const-string v25, "Expected \'<number>\' or \'<percentage>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1001
    :cond_8
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v8, v24

    .local v8, "btok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_9

    move-object/from16 v23, v8

    .line 1002
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    move-object/from16 v23, v8

    .line 1003
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    :cond_9
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    const-string v25, "Expected \'<number>\' or \'<percentage>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1005
    :cond_a
    move-object/from16 v23, v5

    move-object/from16 v3, v23

    .line 1007
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v5, v24

    if-eqz v23, :cond_10

    .line 1008
    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object/from16 v23, v0

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-object/from16 v9, v24

    .local v9, "atok":Lcom/sun/javafx/css/parser/Token;
    if-eqz v23, :cond_b

    move-object/from16 v23, v9

    .line 1009
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    :cond_b
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    const-string v25, "Expected \'<number>\'"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1014
    :cond_c
    :goto_1
    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v23

    move/from16 v10, v23

    .line 1015
    .local v10, "argType":I
    move/from16 v23, v10

    move-object/from16 v24, v7

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    move/from16 v23, v10

    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    move/from16 v23, v10

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    move/from16 v23, v10

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    .line 1017
    :cond_d
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const-string v25, "Argument type mistmatch"

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1020
    :cond_e
    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v11, v23

    .line 1021
    .local v11, "rtext":Ljava/lang/String;
    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v12, v23

    .line 1022
    .local v12, "gtext":Ljava/lang/String;
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v13, v23

    .line 1024
    .local v13, "btext":Ljava/lang/String;
    const-wide/16 v23, 0x0

    move-wide/from16 v14, v23

    .line 1025
    .local v14, "rval":D
    const-wide/16 v23, 0x0

    move-wide/from16 v16, v23

    .line 1026
    .local v16, "gval":D
    const-wide/16 v23, 0x0

    move-wide/from16 v18, v23

    .line 1027
    .local v18, "bval":D
    move/from16 v23, v10

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 1028
    move-object/from16 v23, v2

    const-wide/16 v24, 0x0

    move-object/from16 v26, v11

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    const-wide v28, 0x406fe00000000000L    # 255.0

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v14, v23

    .line 1029
    move-object/from16 v23, v2

    const-wide/16 v24, 0x0

    move-object/from16 v26, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    const-wide v28, 0x406fe00000000000L    # 255.0

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v16, v23

    .line 1030
    move-object/from16 v23, v2

    const-wide/16 v24, 0x0

    move-object/from16 v26, v13

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    const-wide v28, 0x406fe00000000000L    # 255.0

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v18, v23

    .line 1037
    :goto_2
    move-object/from16 v23, v9

    if-eqz v23, :cond_12

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v23

    :goto_3
    move-object/from16 v20, v23

    .line 1038
    .local v20, "atext":Ljava/lang/String;
    move-object/from16 v23, v20

    if-eqz v23, :cond_13

    move-object/from16 v23, v2

    const-wide/16 v24, 0x0

    move-object/from16 v26, v20

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    :goto_4
    move-wide/from16 v21, v23

    .line 1040
    .local v21, "aval":D
    new-instance v23, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    move-wide/from16 v25, v14

    move-wide/from16 v27, v16

    move-wide/from16 v29, v18

    move-wide/from16 v31, v21

    invoke-static/range {v25 .. v32}, Ljavafx/scene/paint/Color;->color(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v25

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object/from16 v2, v23

    .end local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v2

    .line 977
    .end local v4    # "fn":Ljava/lang/String;
    .end local v5    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "rtok":Lcom/sun/javafx/css/parser/Token;
    .end local v7    # "gtok":Lcom/sun/javafx/css/parser/Token;
    .end local v8    # "btok":Lcom/sun/javafx/css/parser/Token;
    .end local v9    # "atok":Lcom/sun/javafx/css/parser/Token;
    .end local v10    # "argType":I
    .end local v11    # "rtext":Ljava/lang/String;
    .end local v12    # "gtext":Ljava/lang/String;
    .end local v13    # "btext":Ljava/lang/String;
    .end local v14    # "rval":D
    .end local v16    # "gval":D
    .end local v18    # "bval":D
    .end local v20    # "atext":Ljava/lang/String;
    .end local v21    # "aval":D
    .restart local v2    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1011
    .restart local v4    # "fn":Ljava/lang/String;
    .restart local v5    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v6    # "rtok":Lcom/sun/javafx/css/parser/Token;
    .restart local v7    # "gtok":Lcom/sun/javafx/css/parser/Token;
    .restart local v8    # "btok":Lcom/sun/javafx/css/parser/Token;
    :cond_10
    const/16 v23, 0x0

    move-object/from16 v9, v23

    .restart local v9    # "atok":Lcom/sun/javafx/css/parser/Token;
    goto/16 :goto_1

    .line 1032
    .restart local v10    # "argType":I
    .restart local v11    # "rtext":Ljava/lang/String;
    .restart local v12    # "gtext":Ljava/lang/String;
    .restart local v13    # "btext":Ljava/lang/String;
    .restart local v14    # "rval":D
    .restart local v16    # "gval":D
    .restart local v18    # "bval":D
    :cond_11
    move-object/from16 v23, v2

    const-wide/16 v24, 0x0

    move-object/from16 v26, v11

    const/16 v27, 0x0

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v14, v23

    .line 1033
    move-object/from16 v23, v2

    const-wide/16 v24, 0x0

    move-object/from16 v26, v12

    const/16 v27, 0x0

    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v16, v23

    .line 1034
    move-object/from16 v23, v2

    const-wide/16 v24, 0x0

    move-object/from16 v26, v13

    const/16 v27, 0x0

    move-object/from16 v28, v13

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v23 .. v29}, Lcom/sun/javafx/css/parser/CSSParser;->clamp(DDD)D

    move-result-wide v23

    move-wide/from16 v18, v23

    goto/16 :goto_2

    .line 1037
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1038
    .restart local v20    # "atext":Ljava/lang/String;
    :cond_13
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_4
.end method

.method private segments(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 3372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v7, :cond_2

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v2, v7

    .line 3373
    .local v2, "fn":Ljava/lang/String;
    const-string v7, "segments"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v10, v2

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3374
    move-object v7, v0

    move-object v8, v1

    const-string v9, "Expected \'segments\'"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3377
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v7

    .line 3378
    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v7, v3

    if-nez v7, :cond_1

    move-object v7, v0

    const/4 v8, 0x0

    const-string v9, "Expected \'<size>\'"

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 3380
    :cond_1
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfArgs(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v7

    move v4, v7

    .line 3381
    .local v4, "nArgs":I
    move v7, v4

    new-array v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v5, v7

    .line 3382
    .local v5, "segments":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v7, 0x0

    move v6, v7

    .line 3383
    .local v6, "segment":I
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_3

    .line 3384
    move-object v7, v5

    move v8, v6

    add-int/lit8 v6, v6, 0x1

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    aput-object v9, v7, v8

    .line 3385
    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v3, v7

    goto :goto_1

    .line 3372
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "nArgs":I
    .end local v5    # "segments":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v6    # "segment":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 3388
    .restart local v2    # "fn":Ljava/lang/String;
    .restart local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .restart local v4    # "nArgs":I
    .restart local v5    # "segments":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .restart local v6    # "segment":I
    :cond_3
    new-instance v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private selector(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Selector;
    .locals 12

    .prologue
    .line 4256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    const/4 v7, 0x0

    move-object v2, v7

    .line 4257
    .local v2, "combinators":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Combinator;>;"
    const/4 v7, 0x0

    move-object v3, v7

    .line 4259
    .local v3, "sels":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->simpleSelector(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/SimpleSelector;

    move-result-object v7

    move-object v4, v7

    .line 4260
    .local v4, "ancestor":Lcom/sun/javafx/css/SimpleSelector;
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    move-object v0, v7

    .line 4292
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 4271
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .local v5, "comb":Lcom/sun/javafx/css/Combinator;
    .local v6, "descendant":Lcom/sun/javafx/css/SimpleSelector;
    :cond_0
    move-object v7, v3

    if-nez v7, :cond_1

    .line 4272
    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 4273
    move-object v7, v3

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 4275
    :cond_1
    move-object v7, v3

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 4279
    .line 4263
    .end local v5    # "comb":Lcom/sun/javafx/css/Combinator;
    .end local v6    # "descendant":Lcom/sun/javafx/css/SimpleSelector;
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->combinator(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Combinator;

    move-result-object v7

    move-object v5, v7

    .line 4264
    .restart local v5    # "comb":Lcom/sun/javafx/css/Combinator;
    move-object v7, v5

    if-eqz v7, :cond_4

    .line 4265
    move-object v7, v2

    if-nez v7, :cond_3

    .line 4266
    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 4268
    :cond_3
    move-object v7, v2

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 4269
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->simpleSelector(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/SimpleSelector;

    move-result-object v7

    move-object v6, v7

    .line 4270
    .restart local v6    # "descendant":Lcom/sun/javafx/css/SimpleSelector;
    move-object v7, v6

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 4284
    .end local v6    # "descendant":Lcom/sun/javafx/css/SimpleSelector;
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v7}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_5

    .line 4285
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4289
    :cond_5
    move-object v7, v3

    if-nez v7, :cond_6

    .line 4290
    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 4292
    :cond_6
    new-instance v7, Lcom/sun/javafx/css/CompoundSelector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/CompoundSelector;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v0, v7

    goto :goto_0
.end method

.method private selectors(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSLexer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 4216
    .local v2, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->selector(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/Selector;

    move-result-object v4

    move-object v3, v4

    .line 4217
    .local v3, "selector":Lcom/sun/javafx/css/Selector;
    move-object v4, v3

    if-nez v4, :cond_3

    .line 4219
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4220
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4221
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 4222
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    goto :goto_1

    .line 4227
    :cond_1
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4230
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 4231
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4232
    const/4 v4, 0x0

    move-object v0, v4

    .line 4251
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_2
    return-object v0

    .line 4237
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_3
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 4239
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4240
    invoke-virtual {v4}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_4

    .line 4242
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4243
    goto :goto_0

    .line 4251
    :cond_4
    move-object v4, v2

    move-object v0, v4

    goto :goto_2
.end method

.method private setInputSource(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser;->stylesheetAsText:Ljava/lang/String;

    .line 153
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    .line 154
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfInlineStyle:Ljavafx/css/Styleable;

    .line 155
    return-void
.end method

.method private setInputSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "str":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/css/parser/CSSParser;->stylesheetAsText:Ljava/lang/String;

    .line 146
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    .line 147
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfInlineStyle:Ljavafx/css/Styleable;

    .line 148
    return-void
.end method

.method private setInputSource(Ljavafx/css/Styleable;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljavafx/css/Styleable;->getStyle()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser;->stylesheetAsText:Ljava/lang/String;

    .line 160
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfStylesheet:Ljava/lang/String;

    .line 161
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSParser;->sourceOfInlineStyle:Ljavafx/css/Styleable;

    .line 162
    return-void

    .line 159
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private simpleSelector(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/SimpleSelector;
    .locals 15

    .prologue
    .line 4299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    const-string v8, "*"

    move-object v2, v8

    .line 4300
    .local v2, "esel":Ljava/lang/String;
    const-string v8, ""

    move-object v3, v8

    .line 4301
    .local v3, "isel":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v4, v8

    .line 4302
    .local v4, "csels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move-object v5, v8

    .line 4306
    .local v5, "pclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4307
    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    :goto_1
    move v6, v8

    .line 4309
    .local v6, "ttype":I
    move v8, v6

    sparse-switch v8, :sswitch_data_0

    .line 4365
    const/4 v8, 0x0

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_2
    return-object v0

    .line 4307
    .end local v6    # "ttype":I
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 4313
    .restart local v6    # "ttype":I
    :sswitch_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 4372
    :cond_1
    :goto_3
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->nextToken()Lcom/sun/javafx/css/parser/Token;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4373
    sget-object v8, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v9, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v8, v9}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4374
    sget-object v8, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 4376
    :cond_2
    goto :goto_0

    .line 4318
    :sswitch_1
    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4319
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4320
    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_4

    .line 4321
    move-object v8, v4

    if-nez v8, :cond_3

    .line 4322
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 4324
    :cond_3
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_3

    .line 4326
    :cond_4
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/css/parser/Token;->INVALID_TOKEN:Lcom/sun/javafx/css/parser/Token;

    iput-object v9, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4327
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_2

    .line 4333
    :sswitch_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 4334
    goto :goto_3

    .line 4337
    :sswitch_3
    move-object v8, v0

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4338
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_5

    move-object v8, v5

    if-nez v8, :cond_5

    .line 4339
    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v8

    .line 4342
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_6

    .line 4343
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 4351
    :goto_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    if-nez v8, :cond_1

    .line 4352
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_2

    .line 4344
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_7

    .line 4345
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->functionalPseudo(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 4346
    .local v7, "pclass":Ljava/lang/String;
    move-object v8, v5

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 4347
    goto :goto_4

    .line 4348
    .end local v7    # "pclass":Ljava/lang/String;
    :cond_7
    move-object v8, v0

    sget-object v9, Lcom/sun/javafx/css/parser/Token;->INVALID_TOKEN:Lcom/sun/javafx/css/parser/Token;

    iput-object v9, v8, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    goto :goto_4

    .line 4362
    :sswitch_4
    new-instance v8, Lcom/sun/javafx/css/SimpleSelector;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/css/SimpleSelector;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_2

    .line 4309
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0xb -> :sswitch_0
        0x1b -> :sswitch_4
        0x1c -> :sswitch_4
        0x1f -> :sswitch_3
        0x21 -> :sswitch_0
        0x24 -> :sswitch_4
        0x25 -> :sswitch_2
        0x26 -> :sswitch_1
        0x28 -> :sswitch_4
        0x29 -> :sswitch_4
    .end sparse-switch
.end method

.method private size(Lcom/sun/javafx/css/parser/Token;)Lcom/sun/javafx/css/Size;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "token":Lcom/sun/javafx/css/parser/Token;
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 566
    .local v2, "units":Lcom/sun/javafx/css/SizeUnits;
    const/4 v8, 0x2

    move v3, v8

    .line 567
    .local v3, "trim":I
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 568
    .local v4, "sval":Ljava/lang/String;
    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 569
    .local v5, "len":I
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v8

    move v6, v8

    .line 570
    .local v6, "ttype":I
    move v8, v6

    packed-switch v8, :pswitch_data_0

    .line 627
    :pswitch_0
    sget-object v8, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v9, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v8, v9}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 628
    sget-object v8, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    const-string v9, "Expected \'<number>\'"

    invoke-virtual {v8, v9}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 630
    :cond_0
    new-instance v8, Lcom/sun/javafx/css/parser/CSSParser$ParseException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "Expected \'<number>\'"

    move-object v11, v1

    move-object v12, v0

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/parser/Token;Lcom/sun/javafx/css/parser/CSSParser;)V

    move-object v7, v8

    .line 631
    .local v7, "re":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    move-object v8, v0

    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 632
    move-object v8, v7

    throw v8

    .line 572
    .end local v7    # "re":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    :pswitch_1
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 573
    const/4 v8, 0x0

    move v3, v8

    .line 635
    :goto_0
    new-instance v8, Lcom/sun/javafx/css/Size;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    const/4 v11, 0x0

    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    .line 636
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    move-object v12, v2

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 576
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :pswitch_2
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 577
    const/4 v8, 0x1

    move v3, v8

    .line 578
    goto :goto_0

    .line 580
    :pswitch_3
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->EM:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 581
    goto :goto_0

    .line 583
    :pswitch_4
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->EX:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 584
    goto :goto_0

    .line 586
    :pswitch_5
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 587
    goto :goto_0

    .line 589
    :pswitch_6
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->CM:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 590
    goto :goto_0

    .line 592
    :pswitch_7
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->MM:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 593
    goto :goto_0

    .line 595
    :pswitch_8
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->IN:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 596
    goto :goto_0

    .line 598
    :pswitch_9
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->PT:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 599
    goto :goto_0

    .line 601
    :pswitch_a
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->PC:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 602
    goto :goto_0

    .line 604
    :pswitch_b
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->DEG:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 605
    const/4 v8, 0x3

    move v3, v8

    .line 606
    goto :goto_0

    .line 608
    :pswitch_c
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->GRAD:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 609
    const/4 v8, 0x4

    move v3, v8

    .line 610
    goto :goto_0

    .line 612
    :pswitch_d
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->RAD:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 613
    const/4 v8, 0x3

    move v3, v8

    .line 614
    goto :goto_0

    .line 616
    :pswitch_e
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->TURN:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 617
    const/4 v8, 0x4

    move v3, v8

    .line 618
    goto :goto_0

    .line 620
    :pswitch_f
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->S:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 621
    const/4 v8, 0x1

    move v3, v8

    .line 622
    goto :goto_0

    .line 624
    :pswitch_10
    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->MS:Lcom/sun/javafx/css/SizeUnits;

    move-object v2, v8

    .line 625
    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private skipExpr(Lcom/sun/javafx/css/parser/CSSLexer;)V
    .locals 6

    .prologue
    .line 4616
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    :goto_0
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4618
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4619
    invoke-virtual {v3}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v3

    :goto_1
    move v2, v3

    .line 4621
    .local v2, "ttype":I
    move v3, v2

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_0

    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 4624
    :cond_0
    return-void

    .line 4619
    .end local v2    # "ttype":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 4626
    .restart local v2    # "ttype":I
    :cond_2
    goto :goto_0
.end method

.method private stop(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/parser/CSSParser$Term;",
            ")",
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 1220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v8, :cond_4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v8}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v2, v8

    .line 1221
    .local v2, "fn":Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_0

    const-string v8, "("

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1222
    :cond_0
    const-string v8, "Expected \'(\'"

    move-object v3, v8

    .line 1223
    .local v3, "msg":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'(\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1226
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    move-object v3, v8

    .line 1228
    .local v3, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v3, v9

    if-nez v8, :cond_2

    move-object v8, v0

    move-object v9, v1

    const-string v10, "Expected \'<number>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1230
    :cond_2
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v4, v8

    .line 1232
    .local v4, "size":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    move-object v8, v3

    move-object v5, v8

    .line 1233
    .local v5, "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v3, v9

    if-nez v8, :cond_3

    move-object v8, v0

    move-object v9, v5

    const-string v10, "Expected \'<color>\'"

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 1235
    :cond_3
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->parseColor(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v8

    move-object v6, v8

    .line 1237
    .local v6, "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v4

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v6

    aput-object v11, v9, v10

    move-object v7, v8

    .line 1238
    .local v7, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v8, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    invoke-static {}, Lcom/sun/javafx/css/parser/StopConverter;->getInstance()Lcom/sun/javafx/css/parser/StopConverter;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 1220
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "size":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v5    # "prev":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "color":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<*Ljavafx/scene/paint/Color;>;"
    .end local v7    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0
.end method

.method private term(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;
    .locals 17

    .prologue
    .line 4631
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4632
    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v10

    :goto_0
    move v2, v10

    .line 4634
    .local v2, "ttype":I
    move v10, v2

    packed-switch v10, :pswitch_data_0

    .line 4699
    :pswitch_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v10, :cond_5

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/Token;->getLine()I

    move-result v10

    :goto_1
    move v5, v10

    .line 4700
    .local v5, "line":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v10, :cond_6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/Token;->getOffset()I

    move-result v10

    :goto_2
    move v6, v10

    .line 4701
    .local v6, "pos":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v10, :cond_7

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v10

    :goto_3
    move-object v7, v10

    .line 4702
    .local v7, "text":Ljava/lang/String;
    const-string v10, "Unexpected token {0}{1}{0} at [{2,number,#},{3,number,#}]"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const-string v14, "\'"

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move-object v14, v7

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move v14, v5

    .line 4704
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    move v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 4703
    invoke-static {v10, v11}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 4705
    .local v8, "msg":Ljava/lang/String;
    move-object v10, v0

    move-object v11, v8

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->createError(Ljava/lang/String;)Lcom/sun/javafx/css/CssError;

    move-result-object v10

    move-object v9, v10

    .line 4706
    .local v9, "error":Lcom/sun/javafx/css/CssError;
    sget-object v10, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4707
    sget-object v10, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object v11, v9

    invoke-virtual {v11}, Lcom/sun/javafx/css/CssError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 4709
    :cond_0
    move-object v10, v0

    move-object v11, v9

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->reportError(Lcom/sun/javafx/css/CssError;)V

    .line 4710
    const/4 v10, 0x0

    move-object v0, v10

    .line 4718
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .end local v5    # "line":I
    .end local v6    # "pos":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "error":Lcom/sun/javafx/css/CssError;
    :goto_4
    return-object v0

    .line 4632
    .end local v2    # "ttype":I
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 4652
    .line 4716
    .restart local v2    # "ttype":I
    :goto_5
    :pswitch_1
    new-instance v10, Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser$Term;-><init>(Lcom/sun/javafx/css/parser/Token;)V

    move-object v3, v10

    .line 4717
    .local v3, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4718
    move-object v10, v3

    move-object v0, v10

    goto :goto_4

    .line 4655
    .end local v3    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :pswitch_2
    goto :goto_5

    .line 4657
    :pswitch_3
    goto :goto_5

    .line 4660
    :pswitch_4
    goto :goto_5

    .line 4665
    :pswitch_5
    new-instance v10, Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser$Term;-><init>(Lcom/sun/javafx/css/parser/Token;)V

    move-object v3, v10

    .line 4666
    .local v3, "function":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4668
    move-object v10, v0

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->term(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v10

    move-object v4, v10

    .line 4669
    .local v4, "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v10, v3

    move-object v11, v4

    iput-object v11, v10, Lcom/sun/javafx/css/parser/CSSParser$Term;->firstArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    .line 4673
    :goto_6
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4674
    invoke-virtual {v10}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v10

    :goto_7
    move v5, v10

    .line 4676
    .local v5, "operator":I
    move v10, v5

    const/16 v11, 0x23

    if-ne v10, v11, :cond_3

    .line 4677
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4678
    move-object v10, v3

    move-object v0, v10

    goto :goto_4

    .line 4674
    .end local v5    # "operator":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_7

    .line 4679
    .restart local v5    # "operator":I
    :cond_3
    move v10, v5

    const/16 v11, 0x24

    if-ne v10, v11, :cond_4

    .line 4683
    move-object v10, v0

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 4684
    move-object v10, v4

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->term(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v11

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    move-object/from16 v12, v16

    iput-object v12, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextArg:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v4, v10

    .line 4690
    :goto_8
    goto :goto_6

    .line 4687
    :cond_4
    move-object v10, v4

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->term(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v11

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    move-object/from16 v12, v16

    iput-object v12, v11, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v4, v10

    goto :goto_8

    .line 4693
    .end local v3    # "function":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v4    # "arg":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v5    # "operator":I
    :pswitch_6
    goto/16 :goto_5

    .line 4696
    :pswitch_7
    goto/16 :goto_5

    .line 4699
    :cond_5
    const/4 v10, -0x1

    goto/16 :goto_1

    .line 4700
    .local v5, "line":I
    :cond_6
    const/4 v10, -0x1

    goto/16 :goto_2

    .line 4701
    .restart local v6    # "pos":I
    :cond_7
    const-string v10, ""

    goto/16 :goto_3

    .line 4634
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;
    .locals 12

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "stylesheetText":Ljava/lang/String;
    new-instance v8, Lcom/sun/javafx/css/Stylesheet;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/sun/javafx/css/Stylesheet;-><init>()V

    move-object v2, v8

    .line 201
    .local v2, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 202
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/parser/CSSParser;->setInputSource(Ljava/lang/String;)V

    .line 203
    :try_start_0
    new-instance v8, Ljava/io/CharArrayReader;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/CharArrayReader;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v8

    .local v3, "reader":Ljava/io/Reader;
    const/4 v8, 0x0

    move-object v4, v8

    .line 204
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    :try_start_1
    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/Stylesheet;Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v3

    :try_start_2
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    .line 209
    .end local v3    # "reader":Ljava/io/Reader;
    :cond_0
    :goto_0
    move-object v8, v2

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 205
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .restart local v3    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v8

    move-object v5, v8

    move-object v8, v4

    move-object v9, v5

    :try_start_3
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 203
    :catch_1
    move-exception v8

    move-object v5, v8

    move-object v8, v5

    move-object v4, v8

    move-object v8, v5

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v3

    if-eqz v8, :cond_2

    move-object v8, v4

    if-eqz v8, :cond_3

    move-object v8, v3

    :try_start_5
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_1
    move-object v8, v6

    :try_start_6
    throw v8

    .end local v3    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v8

    move-object v3, v8

    goto :goto_0

    .restart local v3    # "reader":Ljava/io/Reader;
    :catch_3
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object v1, p1

    .local v1, "docbase":Ljava/lang/String;
    move-object v2, p2

    .local v2, "stylesheetText":Ljava/lang/String;
    new-instance v9, Lcom/sun/javafx/css/Stylesheet;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/Stylesheet;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 221
    .local v3, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v9, v2

    if-eqz v9, :cond_0

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 222
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->setInputSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v9, Ljava/io/CharArrayReader;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/CharArrayReader;-><init>([C)V

    move-object v4, v9

    .local v4, "reader":Ljava/io/Reader;
    const/4 v9, 0x0

    move-object v5, v9

    .line 224
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    :try_start_0
    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/Stylesheet;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v5

    if-eqz v9, :cond_1

    move-object v9, v4

    :try_start_1
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    .end local v4    # "reader":Ljava/io/Reader;
    :cond_0
    :goto_0
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 225
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .restart local v4    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v9

    move-object v6, v9

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    goto :goto_0

    .line 223
    :catch_1
    move-exception v9

    move-object v6, v9

    move-object v9, v6

    move-object v5, v9

    move-object v9, v6

    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v5

    if-eqz v9, :cond_3

    move-object v9, v4

    :try_start_3
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    move-object v9, v7

    throw v9

    :catch_2
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    goto :goto_1
.end method

.method public parse(Ljava/net/URL;)Lcom/sun/javafx/css/Stylesheet;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v9, v1

    if-eqz v9, :cond_1

    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    :goto_0
    move-object v2, v9

    .line 241
    .local v2, "path":Ljava/lang/String;
    new-instance v9, Lcom/sun/javafx/css/Stylesheet;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/Stylesheet;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 242
    .local v3, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v9, v1

    if-eqz v9, :cond_0

    .line 243
    move-object v9, v0

    move-object v10, v2

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->setInputSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v9, Ljava/io/BufferedReader;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/io/InputStreamReader;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v1

    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v9

    .local v4, "reader":Ljava/io/Reader;
    const/4 v9, 0x0

    move-object v5, v9

    .line 245
    move-object v9, v0

    move-object v10, v3

    move-object v11, v4

    :try_start_0
    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/Stylesheet;Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v5

    if-eqz v9, :cond_2

    move-object v9, v4

    :try_start_1
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    .end local v4    # "reader":Ljava/io/Reader;
    :cond_0
    :goto_1
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 240
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 246
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    .restart local v4    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v9

    move-object v6, v9

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    goto :goto_1

    .line 244
    :catch_1
    move-exception v9

    move-object v6, v9

    move-object v9, v6

    move-object v5, v9

    move-object v9, v6

    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v4

    if-eqz v9, :cond_3

    move-object v9, v5

    if-eqz v9, :cond_4

    move-object v9, v4

    :try_start_3
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    move-object v9, v7

    throw v9

    :catch_2
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/Reader;->close()V

    goto :goto_2
.end method

.method public parseExpr(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 17

    .prologue
    .line 311
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "expr":Ljava/lang/String;
    move-object v11, v1

    if-eqz v11, :cond_0

    move-object v11, v2

    if-nez v11, :cond_1

    :cond_0
    const/4 v11, 0x0

    move-object v0, v11

    .line 338
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :goto_0
    return-object v0

    .line 313
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_1
    const/4 v11, 0x0

    move-object v3, v11

    .line 314
    .local v3, "value":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v11, v0

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->setInputSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [C

    move-object v4, v11

    .line 316
    .local v4, "buf":[C
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v4

    const/4 v14, 0x0

    move-object v15, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    move-object v11, v4

    move-object v12, v4

    array-length v12, v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/16 v13, 0x3b

    aput-char v13, v11, v12

    .line 319
    :try_start_0
    new-instance v11, Ljava/io/CharArrayReader;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v4

    invoke-direct {v12, v13}, Ljava/io/CharArrayReader;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/javafx/css/parser/CSSParser$ParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v5, v11

    .local v5, "reader":Ljava/io/Reader;
    const/4 v11, 0x0

    move-object v6, v11

    .line 320
    :try_start_1
    invoke-static {}, Lcom/sun/javafx/css/parser/CSSLexer;->getInstance()Lcom/sun/javafx/css/parser/CSSLexer;

    move-result-object v11

    move-object v7, v11

    .line 321
    .local v7, "lex":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v11, v7

    move-object v12, v5

    invoke-virtual {v11, v12}, Lcom/sun/javafx/css/parser/CSSLexer;->setReader(Ljava/io/Reader;)V

    .line 323
    move-object v11, v0

    move-object v12, v0

    move-object v13, v7

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v12

    iput-object v12, v11, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 324
    move-object v11, v0

    move-object v12, v7

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->expr(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-result-object v11

    move-object v8, v11

    .line 325
    .local v8, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v11, v0

    move-object v12, v1

    move-object v13, v8

    move-object v14, v7

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->valueFor(Ljava/lang/String;Lcom/sun/javafx/css/parser/CSSParser$Term;Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/ParsedValueImpl;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    move-object v3, v11

    .line 326
    move-object v11, v5

    if-eqz v11, :cond_2

    move-object v11, v6

    if-eqz v11, :cond_3

    move-object v11, v5

    :try_start_2
    invoke-virtual {v11}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/javafx/css/parser/CSSParser$ParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 337
    .line 338
    .end local v5    # "reader":Ljava/io/Reader;
    .end local v7    # "lex":Lcom/sun/javafx/css/parser/CSSLexer;
    .end local v8    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :cond_2
    :goto_1
    move-object v11, v3

    move-object v0, v11

    goto/16 :goto_0

    .line 326
    .restart local v5    # "reader":Ljava/io/Reader;
    .restart local v7    # "lex":Lcom/sun/javafx/css/parser/CSSLexer;
    .restart local v8    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :catch_0
    move-exception v11

    move-object v7, v11

    move-object v11, v6

    move-object v12, v7

    :try_start_3
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "lex":Lcom/sun/javafx/css/parser/CSSLexer;
    goto :goto_1

    .restart local v7    # "lex":Lcom/sun/javafx/css/parser/CSSLexer;
    :cond_3
    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/javafx/css/parser/CSSParser$ParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 319
    .end local v7    # "lex":Lcom/sun/javafx/css/parser/CSSLexer;
    .end local v8    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    :catch_1
    move-exception v11

    move-object v7, v11

    move-object v11, v7

    move-object v6, v11

    move-object v11, v7

    :try_start_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v5

    if-eqz v11, :cond_4

    move-object v11, v6

    if-eqz v11, :cond_5

    move-object v11, v5

    :try_start_5
    invoke-virtual {v11}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/javafx/css/parser/CSSParser$ParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_2
    move-object v11, v9

    :try_start_6
    throw v11

    .end local v5    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v11

    move-object v5, v11

    .line 337
    goto :goto_1

    .line 326
    .restart local v5    # "reader":Ljava/io/Reader;
    :catch_3
    move-exception v11

    move-object v10, v11

    move-object v11, v6

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/sun/javafx/css/parser/CSSParser$ParseException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 327
    .end local v5    # "reader":Ljava/io/Reader;
    :catch_4
    move-exception v11

    move-object v5, v11

    .line 328
    .local v5, "e":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    sget-object v11, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v12, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 329
    sget-object v11, Lcom/sun/javafx/css/parser/CSSParser;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v13}, Lcom/sun/javafx/css/parser/CSSParser$ParseException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 337
    :cond_6
    goto :goto_1

    .line 331
    .end local v5    # "e":Lcom/sun/javafx/css/parser/CSSParser$ParseException;
    :catch_5
    move-exception v11

    move-object v5, v11

    .line 336
    .local v5, "ex":Ljava/lang/Exception;
    move-object v11, v0

    move-object v12, v5

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->reportException(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public parseInlineStyle(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/Stylesheet;
    .locals 18

    .prologue
    .line 273
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "node":Ljavafx/css/Styleable;
    new-instance v13, Lcom/sun/javafx/css/Stylesheet;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Lcom/sun/javafx/css/Stylesheet;-><init>()V

    move-object v2, v13

    .line 275
    .local v2, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v13, v1

    if-eqz v13, :cond_3

    move-object v13, v1

    invoke-interface {v13}, Ljavafx/css/Styleable;->getStyle()Ljava/lang/String;

    move-result-object v13

    :goto_0
    move-object v3, v13

    .line 276
    .local v3, "stylesheetText":Ljava/lang/String;
    move-object v13, v3

    if-eqz v13, :cond_2

    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 277
    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->setInputSource(Ljavafx/css/Styleable;)V

    .line 278
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v13

    .line 279
    .local v4, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    :try_start_0
    new-instance v13, Ljava/io/CharArrayReader;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/CharArrayReader;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v5, v13

    .local v5, "reader":Ljava/io/Reader;
    const/4 v13, 0x0

    move-object v6, v13

    .line 280
    :try_start_1
    invoke-static {}, Lcom/sun/javafx/css/parser/CSSLexer;->getInstance()Lcom/sun/javafx/css/parser/CSSLexer;

    move-result-object v13

    move-object v7, v13

    .line 281
    .local v7, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v13, v7

    move-object v14, v5

    invoke-virtual {v13, v14}, Lcom/sun/javafx/css/parser/CSSLexer;->setReader(Ljava/io/Reader;)V

    .line 282
    move-object v13, v0

    move-object v14, v0

    move-object v15, v7

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/parser/CSSParser;->nextToken(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Token;

    move-result-object v14

    iput-object v14, v13, Lcom/sun/javafx/css/parser/CSSParser;->currentToken:Lcom/sun/javafx/css/parser/Token;

    .line 283
    move-object v13, v0

    move-object v14, v7

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->declarations(Lcom/sun/javafx/css/parser/CSSLexer;)Ljava/util/List;

    move-result-object v13

    move-object v8, v13

    .line 284
    .local v8, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    move-object v13, v8

    if-eqz v13, :cond_0

    move-object v13, v8

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 285
    invoke-static {}, Lcom/sun/javafx/css/Selector;->getUniversalSelector()Lcom/sun/javafx/css/Selector;

    move-result-object v13

    move-object v9, v13

    .line 286
    .local v9, "selector":Lcom/sun/javafx/css/Selector;
    new-instance v13, Lcom/sun/javafx/css/Rule;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v9

    .line 287
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/css/Rule;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v10, v13

    .line 290
    .local v10, "rule":Lcom/sun/javafx/css/Rule;
    move-object v13, v4

    move-object v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 292
    .end local v9    # "selector":Lcom/sun/javafx/css/Selector;
    .end local v10    # "rule":Lcom/sun/javafx/css/Rule;
    :cond_0
    move-object v13, v5

    if-eqz v13, :cond_1

    move-object v13, v6

    if-eqz v13, :cond_4

    move-object v13, v5

    :try_start_2
    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 299
    .line 300
    .end local v5    # "reader":Ljava/io/Reader;
    .end local v7    # "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    .end local v8    # "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    :cond_1
    :goto_1
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/css/Stylesheet;->getRules()Ljava/util/List;

    move-result-object v13

    move-object v14, v4

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v13

    .line 304
    .end local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    :cond_2
    move-object v13, v0

    const/4 v14, 0x0

    check-cast v14, Ljavafx/css/Styleable;

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->setInputSource(Ljavafx/css/Styleable;)V

    .line 306
    move-object v13, v2

    move-object v0, v13

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    return-object v0

    .line 275
    .end local v3    # "stylesheetText":Ljava/lang/String;
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 292
    .restart local v3    # "stylesheetText":Ljava/lang/String;
    .restart local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    .restart local v5    # "reader":Ljava/io/Reader;
    .restart local v7    # "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    .restart local v8    # "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    :catch_0
    move-exception v13

    move-object v7, v13

    move-object v13, v6

    move-object v14, v7

    :try_start_3
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    goto :goto_1

    .restart local v7    # "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    :cond_4
    move-object v13, v5

    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 279
    .end local v7    # "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    .end local v8    # "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    :catch_1
    move-exception v13

    move-object v7, v13

    move-object v13, v7

    move-object v6, v13

    move-object v13, v7

    :try_start_4
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    :catchall_0
    move-exception v13

    move-object v11, v13

    move-object v13, v5

    if-eqz v13, :cond_5

    move-object v13, v6

    if-eqz v13, :cond_6

    move-object v13, v5

    :try_start_5
    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_2
    move-object v13, v11

    :try_start_6
    throw v13

    .end local v5    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v13

    move-object v5, v13

    .line 299
    goto :goto_1

    .line 292
    .restart local v5    # "reader":Ljava/io/Reader;
    :catch_3
    move-exception v13

    move-object v12, v13

    move-object v13, v6

    move-object v14, v12

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    move-object v13, v5

    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 293
    .end local v5    # "reader":Ljava/io/Reader;
    :catch_4
    move-exception v13

    move-object v5, v13

    .line 298
    .local v5, "ex":Ljava/lang/Exception;
    move-object v13, v0

    move-object v14, v5

    invoke-direct {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->reportException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method valueFor(Ljava/lang/String;Lcom/sun/javafx/css/parser/CSSParser$Term;Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/css/parser/CSSParser$ParseException;
        }
    .end annotation

    .prologue
    .line 701
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSParser;
    move-object/from16 v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "root":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object/from16 v3, p3

    .local v3, "lexer":Lcom/sun/javafx/css/parser/CSSLexer;
    move-object v9, v1

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 702
    .local v4, "prop":Ljava/lang/String;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser;->properties:Ljava/util/Map;

    move-object v10, v4

    move-object v11, v4

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 703
    move-object v9, v2

    if-eqz v9, :cond_0

    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-nez v9, :cond_1

    .line 704
    :cond_0
    move-object v9, v0

    move-object v10, v2

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected value for property \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 707
    :cond_1
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_4

    .line 708
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 709
    .local v5, "txt":Ljava/lang/String;
    const-string v9, "inherit"

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 710
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "inherit"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v9

    .line 831
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .end local v5    # "txt":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 711
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSParser;
    .restart local v5    # "txt":Ljava/lang/String;
    :cond_2
    const-string v9, "null"

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "none"

    move-object v10, v5

    .line 712
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 713
    :cond_3
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "null"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v9

    goto :goto_0

    .line 716
    .end local v5    # "txt":Ljava/lang/String;
    :cond_4
    const-string v9, "-fx-fill"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 717
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 718
    .local v5, "pv":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v5

    invoke-virtual {v9}, Lcom/sun/javafx/css/ParsedValueImpl;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v9

    invoke-static {}, Ljavafx/css/StyleConverter;->getUrlConverter()Ljavafx/css/StyleConverter;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 721
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    new-array v11, v11, [Ljavafx/css/ParsedValue;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v5

    aput-object v14, v12, v13

    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v5, v9

    .line 723
    :cond_5
    move-object v9, v5

    move-object v0, v9

    goto :goto_0

    .line 725
    .end local v5    # "pv":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_6
    const-string v9, "-fx-background-color"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 726
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parsePaintLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 727
    :cond_7
    const-string v9, "-fx-background-image"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 728
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseURILayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto :goto_0

    .line 729
    :cond_8
    const-string v9, "-fx-background-insets"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 730
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseInsetsLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 731
    :cond_9
    const-string v9, "-fx-opaque-insets"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 732
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseInsetsLayer(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 733
    :cond_a
    const-string v9, "-fx-background-position"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 734
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBackgroundPositionLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 735
    :cond_b
    const-string v9, "-fx-background-radius"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 736
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseCornerRadius(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 737
    :cond_c
    const-string v9, "-fx-background-repeat"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 738
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBackgroundRepeatStyleLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 739
    :cond_d
    const-string v9, "-fx-background-size"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 740
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBackgroundSizeLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 741
    :cond_e
    const-string v9, "-fx-border-color"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 742
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderPaintLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 743
    :cond_f
    const-string v9, "-fx-border-insets"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 744
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseInsetsLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 745
    :cond_10
    const-string v9, "-fx-border-radius"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 746
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseCornerRadius(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 747
    :cond_11
    const-string v9, "-fx-border-style"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 748
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderStyleLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 749
    :cond_12
    const-string v9, "-fx-border-width"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 750
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseMarginsLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 751
    :cond_13
    const-string v9, "-fx-border-image-insets"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 752
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseInsetsLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 753
    :cond_14
    const-string v9, "-fx-border-image-repeat"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 754
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderImageRepeatStyleLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 755
    :cond_15
    const-string v9, "-fx-border-image-slice"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 756
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderImageSliceLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 757
    :cond_16
    const-string v9, "-fx-border-image-source"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 758
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseURILayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 759
    :cond_17
    const-string v9, "-fx-border-image-width"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 760
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseBorderImageWidthLayers(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 761
    :cond_18
    const-string v9, "-fx-padding"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 762
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize1to4(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 763
    .local v5, "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v9

    goto/16 :goto_0

    .line 764
    .end local v5    # "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_19
    const-string v9, "-fx-label-padding"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 765
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize1to4(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 766
    .restart local v5    # "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v9

    goto/16 :goto_0

    .line 767
    .end local v5    # "sides":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    :cond_1a
    move-object v9, v4

    const-string v10, "font-family"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 768
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontFamily(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 769
    :cond_1b
    move-object v9, v4

    const-string v10, "font-size"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 770
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 771
    .local v5, "fsize":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v5

    if-nez v9, :cond_1c

    move-object v9, v0

    move-object v10, v2

    const-string v11, "Expected \'<font-size>\'"

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 772
    :cond_1c
    move-object v9, v5

    move-object v0, v9

    goto/16 :goto_0

    .line 773
    .end local v5    # "fsize":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_1d
    move-object v9, v4

    const-string v10, "font-style"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 774
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontStyle(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 775
    .local v5, "fstyle":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v5

    if-nez v9, :cond_1e

    move-object v9, v0

    move-object v10, v2

    const-string v11, "Expected \'<font-style>\'"

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 776
    :cond_1e
    move-object v9, v5

    move-object v0, v9

    goto/16 :goto_0

    .line 777
    .end local v5    # "fstyle":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_1f
    move-object v9, v4

    const-string v10, "font-weight"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 778
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseFontWeight(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 779
    .local v5, "fweight":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v5

    if-nez v9, :cond_20

    move-object v9, v0

    move-object v10, v2

    const-string v11, "Expected \'<font-style>\'"

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 780
    :cond_20
    move-object v9, v5

    move-object v0, v9

    goto/16 :goto_0

    .line 781
    .end local v5    # "fweight":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_21
    move-object v9, v4

    const-string v10, "font"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 782
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseFont(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0

    .line 783
    :cond_22
    const-string v9, "-fx-stroke-dash-array"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 786
    move-object v9, v2

    move-object v5, v9

    .line 787
    .local v5, "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->numberOfTerms(Lcom/sun/javafx/css/parser/CSSParser$Term;)I

    move-result v9

    move v6, v9

    .line 788
    .local v6, "nArgs":I
    move v9, v6

    new-array v9, v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v7, v9

    .line 789
    .local v7, "segments":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    const/4 v9, 0x0

    move v8, v9

    .line 790
    .local v8, "segment":I
    :goto_1
    move-object v9, v5

    if-eqz v9, :cond_23

    .line 791
    move-object v9, v7

    move v10, v8

    add-int/lit8 v8, v8, 0x1

    move-object v11, v0

    move-object v12, v5

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->parseSize(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v11

    aput-object v11, v9, v10

    .line 792
    move-object v9, v5

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->nextInSeries:Lcom/sun/javafx/css/parser/CSSParser$Term;

    move-object v5, v9

    goto :goto_1

    .line 795
    :cond_23
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v7

    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/SizeConverter$SequenceConverter;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v0, v9

    goto/16 :goto_0

    .line 797
    .end local v5    # "term":Lcom/sun/javafx/css/parser/CSSParser$Term;
    .end local v6    # "nArgs":I
    .end local v7    # "segments":[Lcom/sun/javafx/css/ParsedValueImpl;, "[Lcom/sun/javafx/css/ParsedValueImpl<*Lcom/sun/javafx/css/Size;>;"
    .end local v8    # "segment":I
    :cond_24
    const-string v9, "-fx-stroke-line-join"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 800
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseStrokeLineJoin(Lcom/sun/javafx/css/parser/CSSParser$Term;)[Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 801
    .local v5, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v5

    if-nez v9, :cond_25

    move-object v9, v0

    move-object v10, v2

    const-string v11, "Expected \'miter\', \'bevel\' or \'round\'"

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 802
    :cond_25
    move-object v9, v5

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v0, v9

    goto/16 :goto_0

    .line 803
    .end local v5    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_26
    const-string v9, "-fx-stroke-line-cap"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 806
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseStrokeLineCap(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 807
    .local v5, "value":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v5

    if-nez v9, :cond_27

    move-object v9, v0

    move-object v10, v2

    const-string v11, "Expected \'square\', \'butt\' or \'round\'"

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 808
    :cond_27
    move-object v9, v5

    move-object v0, v9

    goto/16 :goto_0

    .line 809
    .end local v5    # "value":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_28
    const-string v9, "-fx-stroke-type"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 812
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parseStrokeType(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v5, v9

    .line 813
    .restart local v5    # "value":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v5

    if-nez v9, :cond_29

    move-object v9, v0

    move-object v10, v2

    const-string v11, "Expected \'centered\', \'inside\' or \'outside\'"

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 814
    :cond_29
    move-object v9, v5

    move-object v0, v9

    goto/16 :goto_0

    .line 815
    .end local v5    # "value":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_2a
    const-string v9, "-fx-font-smoothing-type"

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 818
    const/4 v9, 0x0

    move-object v5, v9

    .line 819
    .local v5, "str":Ljava/lang/String;
    const/4 v9, -0x1

    move v6, v9

    .line 820
    .local v6, "ttype":I
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    move-object v7, v9

    .line 822
    .local v7, "token":Lcom/sun/javafx/css/parser/Token;
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    if-eqz v9, :cond_2c

    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 823
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getType()I

    move-result v9

    move v15, v9

    move v9, v15

    move v10, v15

    move v6, v10

    const/16 v10, 0xa

    if-eq v9, v10, :cond_2b

    move v9, v6

    const/16 v10, 0xb

    if-ne v9, v10, :cond_2c

    :cond_2b
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSParser$Term;->token:Lcom/sun/javafx/css/parser/Token;

    .line 825
    invoke-virtual {v9}, Lcom/sun/javafx/css/parser/Token;->getText()Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v5, v10

    if-eqz v9, :cond_2c

    move-object v9, v5

    .line 826
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 827
    :cond_2c
    move-object v9, v0

    move-object v10, v2

    const-string v11, "Expected STRING or IDENT"

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/parser/CSSParser;->error(Lcom/sun/javafx/css/parser/CSSParser$Term;Ljava/lang/String;)V

    .line 829
    :cond_2d
    new-instance v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v5

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/parser/CSSParser;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object v0, v9

    goto/16 :goto_0

    .line 831
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "ttype":I
    .end local v7    # "token":Lcom/sun/javafx/css/parser/Token;
    :cond_2e
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Lcom/sun/javafx/css/parser/CSSParser$Term;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0
.end method
