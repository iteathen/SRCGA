.class public final Ljava/time/format/DecimalStyle;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD:Ljava/time/format/DecimalStyle;


# instance fields
.field private final decimalSeparator:C

.field private final negativeSign:C

.field private final positiveSign:C

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 60
    new-instance v0, Ljava/time/format/DecimalStyle;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x30

    const/16 v3, 0x2b

    const/16 v4, 0x2d

    const/16 v5, 0x2e

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    sput-object v0, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(CCCC)V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move v1, p1

    .local v1, "zeroChar":C
    move v2, p2

    .local v2, "positiveSignChar":C
    move v3, p3

    .local v3, "negativeSignChar":C
    move v4, p4

    .local v4, "decimalPointChar":C
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 148
    move-object v5, v0

    move v6, v1

    iput-char v6, v5, Ljava/time/format/DecimalStyle;->zeroDigit:C

    .line 149
    move-object v5, v0

    move v6, v2

    iput-char v6, v5, Ljava/time/format/DecimalStyle;->positiveSign:C

    .line 150
    move-object v5, v0

    move v6, v3

    iput-char v6, v5, Ljava/time/format/DecimalStyle;->negativeSign:C

    .line 151
    move-object v5, v0

    move v6, v4

    iput-char v6, v5, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    .line 152
    return-void
.end method

.method private static create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .locals 13

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v6, v0

    invoke-static {v6}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    move-object v1, v6

    .line 128
    .local v1, "oldSymbols":Ljava/text/DecimalFormatSymbols;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v6

    move v2, v6

    .line 129
    .local v2, "zeroDigit":C
    const/16 v6, 0x2b

    move v3, v6

    .line 130
    .local v3, "positiveSign":C
    move-object v6, v1

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v6

    move v4, v6

    .line 131
    .local v4, "negativeSign":C
    move-object v6, v1

    invoke-virtual {v6}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    move v5, v6

    .line 132
    .local v5, "decimalSeparator":C
    move v6, v2

    const/16 v7, 0x30

    if-ne v6, v7, :cond_0

    move v6, v4

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    move v6, v5

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_0

    .line 133
    sget-object v6, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    move-object v0, v6

    .line 135
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    new-instance v6, Ljava/time/format/DecimalStyle;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    move-object v0, v6

    goto :goto_0
.end method

.method public static getAvailableLocales()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    move-object v0, v1

    .line 93
    .local v0, "l":[Ljava/util/Locale;
    new-instance v1, Ljava/util/HashSet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .end local v0    # "l":[Ljava/util/Locale;
    return-object v0
.end method

.method public static of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v2, v0

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    sget-object v2, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/format/DecimalStyle;

    move-object v1, v2

    .line 118
    .local v1, "info":Ljava/time/format/DecimalStyle;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 119
    move-object v2, v0

    invoke-static {v2}, Ljava/time/format/DecimalStyle;->create(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v2

    move-object v1, v2

    .line 120
    sget-object v2, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 121
    sget-object v2, Ljava/time/format/DecimalStyle;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/format/DecimalStyle;

    move-object v1, v2

    .line 123
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "locale":Ljava/util/Locale;
    return-object v0
.end method

.method public static ofDefaultLocale()Ljava/time/format/DecimalStyle;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move-object v1, p1

    .local v1, "numericText":Ljava/lang/String;
    move-object v5, v0

    iget-char v5, v5, Ljava/time/format/DecimalStyle;->zeroDigit:C

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 291
    move-object v5, v1

    move-object v0, v5

    .line 298
    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    :goto_0
    return-object v0

    .line 293
    .restart local v0    # "this":Ljava/time/format/DecimalStyle;
    :cond_0
    move-object v5, v0

    iget-char v5, v5, Ljava/time/format/DecimalStyle;->zeroDigit:C

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    move v2, v5

    .line 294
    .local v2, "diff":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move-object v3, v5

    .line 295
    .local v3, "array":[C
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 296
    move-object v5, v3

    move v6, v4

    move-object v7, v3

    move v8, v4

    aget-char v7, v7, v8

    move v8, v2

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 298
    :cond_1
    new-instance v5, Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    move-object v0, v5

    goto :goto_0
.end method

.method convertToDigit(C)I
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move v1, p1

    .local v1, "ch":C
    move v3, v1

    move-object v4, v0

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->zeroDigit:C

    sub-int/2addr v3, v4

    move v2, v3

    .line 280
    .local v2, "val":I
    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    const/16 v4, 0x9

    if-gt v3, v4, :cond_0

    move v3, v2

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    return v0

    .restart local v0    # "this":Ljava/time/format/DecimalStyle;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 311
    const/4 v3, 0x1

    move v0, v3

    .line 318
    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    :goto_0
    return v0

    .line 313
    .restart local v0    # "this":Ljava/time/format/DecimalStyle;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/format/DecimalStyle;

    if-eqz v3, :cond_2

    .line 314
    move-object v3, v1

    check-cast v3, Ljava/time/format/DecimalStyle;

    move-object v2, v3

    .line 315
    .local v2, "other":Ljava/time/format/DecimalStyle;
    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->zeroDigit:C

    move-object v4, v2

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->positiveSign:C

    move-object v4, v2

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->negativeSign:C

    move-object v4, v2

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    move-object v4, v2

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 318
    .end local v2    # "other":Ljava/time/format/DecimalStyle;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDecimalSeparator()C
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move-object v1, v0

    iget-char v1, v1, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    return v0
.end method

.method public getNegativeSign()C
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move-object v1, v0

    iget-char v1, v1, Ljava/time/format/DecimalStyle;->negativeSign:C

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    return v0
.end method

.method public getPositiveSign()C
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move-object v1, v0

    iget-char v1, v1, Ljava/time/format/DecimalStyle;->positiveSign:C

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    return v0
.end method

.method public getZeroDigit()C
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move-object v1, v0

    iget-char v1, v1, Ljava/time/format/DecimalStyle;->zeroDigit:C

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move-object v1, v0

    iget-char v1, v1, Ljava/time/format/DecimalStyle;->zeroDigit:C

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DecimalStyle;->positiveSign:C

    add-int/2addr v1, v2

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DecimalStyle;->negativeSign:C

    add-int/2addr v1, v2

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecimalStyle["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DecimalStyle;->zeroDigit:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DecimalStyle;->positiveSign:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DecimalStyle;->negativeSign:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    return-object v0
.end method

.method public withDecimalSeparator(C)Ljava/time/format/DecimalStyle;
    .locals 9

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move v1, p1

    .local v1, "decimalSeparator":C
    move v2, v1

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    if-ne v2, v3, :cond_0

    .line 266
    move-object v2, v0

    move-object v0, v2

    .line 268
    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DecimalStyle;
    :cond_0
    new-instance v2, Ljava/time/format/DecimalStyle;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->zeroDigit:C

    move-object v5, v0

    iget-char v5, v5, Ljava/time/format/DecimalStyle;->positiveSign:C

    move-object v6, v0

    iget-char v6, v6, Ljava/time/format/DecimalStyle;->negativeSign:C

    move v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    move-object v0, v2

    goto :goto_0
.end method

.method public withNegativeSign(C)Ljava/time/format/DecimalStyle;
    .locals 9

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move v1, p1

    .local v1, "negativeSign":C
    move v2, v1

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->negativeSign:C

    if-ne v2, v3, :cond_0

    .line 237
    move-object v2, v0

    move-object v0, v2

    .line 239
    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DecimalStyle;
    :cond_0
    new-instance v2, Ljava/time/format/DecimalStyle;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->zeroDigit:C

    move-object v5, v0

    iget-char v5, v5, Ljava/time/format/DecimalStyle;->positiveSign:C

    move v6, v1

    move-object v7, v0

    iget-char v7, v7, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    move-object v0, v2

    goto :goto_0
.end method

.method public withPositiveSign(C)Ljava/time/format/DecimalStyle;
    .locals 9

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move v1, p1

    .local v1, "positiveSign":C
    move v2, v1

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->positiveSign:C

    if-ne v2, v3, :cond_0

    .line 208
    move-object v2, v0

    move-object v0, v2

    .line 210
    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DecimalStyle;
    :cond_0
    new-instance v2, Ljava/time/format/DecimalStyle;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-char v4, v4, Ljava/time/format/DecimalStyle;->zeroDigit:C

    move v5, v1

    move-object v6, v0

    iget-char v6, v6, Ljava/time/format/DecimalStyle;->negativeSign:C

    move-object v7, v0

    iget-char v7, v7, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    move-object v0, v2

    goto :goto_0
.end method

.method public withZeroDigit(C)Ljava/time/format/DecimalStyle;
    .locals 9

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DecimalStyle;
    move v1, p1

    .local v1, "zeroDigit":C
    move v2, v1

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DecimalStyle;->zeroDigit:C

    if-ne v2, v3, :cond_0

    .line 179
    move-object v2, v0

    move-object v0, v2

    .line 181
    .end local v0    # "this":Ljava/time/format/DecimalStyle;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DecimalStyle;
    :cond_0
    new-instance v2, Ljava/time/format/DecimalStyle;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move v4, v1

    move-object v5, v0

    iget-char v5, v5, Ljava/time/format/DecimalStyle;->positiveSign:C

    move-object v6, v0

    iget-char v6, v6, Ljava/time/format/DecimalStyle;->negativeSign:C

    move-object v7, v0

    iget-char v7, v7, Ljava/time/format/DecimalStyle;->decimalSeparator:C

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/format/DecimalStyle;-><init>(CCCC)V

    move-object v0, v2

    goto :goto_0
.end method
