.class final Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubstringTree"
.end annotation


# instance fields
.field final length:I

.field private final substringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;",
            ">;"
        }
    .end annotation
.end field

.field private final substringMapCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 6

    .prologue
    .line 3613
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move v1, p1

    .local v1, "length":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3602
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    .line 3606
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    .line 3614
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    .line 3615
    return-void
.end method

.method synthetic constructor <init>(ILjava/time/format/DateTimeFormatterBuilder$1;)V
    .locals 5

    .prologue
    .line 3593
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move v1, p1

    .local v1, "x0":I
    move-object v2, p2

    .local v2, "x1":Ljava/time/format/DateTimeFormatterBuilder$1;
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/CharSequence;Z)Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .locals 6

    .prologue
    .line 3593
    move-object v0, p0

    .local v0, "x0":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->get(Ljava/lang/CharSequence;Z)Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    return-object v0
.end method

.method static synthetic access$300(Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3593
    move-object v0, p0

    .local v0, "x0":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->add(Ljava/lang/String;)V

    return-void
.end method

.method private add(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 3631
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move-object v1, p1

    .local v1, "newSubstring":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    .line 3632
    .local v2, "idLen":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    if-ne v5, v6, :cond_1

    .line 3633
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    move-object v6, v1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3634
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    move-object v6, v1

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3645
    :cond_0
    :goto_0
    return-void

    .line 3635
    :cond_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    if-le v5, v6, :cond_0

    .line 3636
    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 3637
    .local v3, "substring":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-object v4, v5

    .line 3638
    .local v4, "parserTree":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move-object v5, v4

    if-nez v5, :cond_2

    .line 3639
    new-instance v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v2

    invoke-direct {v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;-><init>(I)V

    move-object v4, v5

    .line 3640
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    move-object v6, v3

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3641
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    move-object v6, v3

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3643
    :cond_2
    move-object v5, v4

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->add(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private get(Ljava/lang/CharSequence;Z)Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .locals 6

    .prologue
    .line 3618
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move-object v1, p1

    .local v1, "substring2":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "caseSensitive":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 3619
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-object v0, v3

    .line 3621
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->substringMapCI:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-object v0, v3

    goto :goto_0
.end method
