.class public Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
.super Ljava/lang/Object;
.source "GradientUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/paint/GradientUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;
    }
.end annotation


# instance fields
.field private index:I

.field private proportional:Z

.field private proportionalSet:Z

.field private tokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->proportionalSet:Z

    .line 109
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-static {}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser$$Lambda$1;->lambdaFactory$()Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->splitString(Ljava/lang/String;Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;Z)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->tokens:[Ljava/lang/String;

    .line 111
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->index:I

    .line 112
    return-void
.end method

.method static synthetic access$lambda$0(C)Z
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->lambda$new$258(C)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$1(C)Z
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->lambda$parseStops$259(C)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static checkNumberOfArguments([Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "tokens":[Ljava/lang/String;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    array-length v2, v2

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    .line 137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid gradient specification: parameter \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' needs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " argument(s)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$258(C)Z
    .locals 3

    .prologue
    .line 109
    move v0, p0

    .local v0, "value":C
    move v1, v0

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":C
    return v0

    .restart local v0    # "value":C
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$parseStops$259(C)Z
    .locals 2

    .prologue
    .line 213
    move v0, p0

    .local v0, "value":C
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    move v0, v1

    .end local v0    # "value":C
    return v0
.end method

.method public static parseAngle(Ljava/lang/String;)D
    .locals 9

    .prologue
    .line 143
    move-object v1, p0

    .local v1, "value":Ljava/lang/String;
    const-wide/16 v4, 0x0

    move-wide v2, v4

    .line 144
    .local v2, "angle":D
    move-object v4, v1

    const-string v5, "deg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 146
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v2, v4

    .line 164
    :goto_0
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "value":Ljava/lang/String;
    return-wide v1

    .line 147
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    move-object v4, v1

    const-string v5, "grad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 149
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v2, v4

    .line 150
    move-wide v4, v2

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    move-wide v2, v4

    goto :goto_0

    .line 151
    :cond_1
    move-object v4, v1

    const-string v5, "rad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 153
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v2, v4

    .line 154
    move-wide v4, v2

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    move-wide v2, v4

    goto :goto_0

    .line 155
    :cond_2
    move-object v4, v1

    const-string v5, "turn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 157
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v2, v4

    .line 158
    move-wide v4, v2

    const-wide v6, 0x4076800000000000L    # 360.0

    mul-double/2addr v4, v6

    move-wide v2, v4

    goto :goto_0

    .line 160
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Invalid gradient specification:angle must end in deg, rad, grad, or turn"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parsePercentage(Ljava/lang/String;)D
    .locals 9

    .prologue
    .line 169
    move-object v1, p0

    .local v1, "value":Ljava/lang/String;
    move-object v4, v1

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 171
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    move-wide v2, v4

    .line 176
    .local v2, "percentage":D
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "value":Ljava/lang/String;
    return-wide v1

    .line 173
    .end local v2    # "percentage":D
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Invalid gradient specification: focus-distance must be specified as percentage"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private splitString(Ljava/lang/String;Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;Z)[Ljava/lang/String;
    .locals 13

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v2, p2

    .local v2, "delimiter":Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;
    move/from16 v3, p3

    .local v3, "canRepeat":Z
    new-instance v9, Ljava/util/LinkedList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v9

    .line 77
    .local v4, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v9

    .line 78
    .local v5, "token":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    move v6, v9

    .line 79
    .local v6, "i":I
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    move-object v7, v9

    .line 80
    .local v7, "input":[C
    :goto_0
    move v9, v6

    move-object v10, v7

    array-length v10, v10

    if-ge v9, v10, :cond_6

    .line 81
    move-object v9, v7

    move v10, v6

    aget-char v9, v9, v10

    move v8, v9

    .line 83
    .local v8, "currentChar":C
    move-object v9, v2

    move v10, v8

    invoke-interface {v9, v10}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;->isDelimiter(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    move v9, v3

    if-eqz v9, :cond_0

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 85
    :cond_0
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 87
    :cond_1
    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 100
    goto :goto_0

    .line 88
    :cond_3
    move v9, v8

    const/16 v10, 0x28

    if-ne v9, v10, :cond_5

    .line 89
    :goto_2
    move v9, v6

    move-object v10, v7

    array-length v10, v10

    if-ge v9, v10, :cond_2

    .line 90
    move-object v9, v5

    move-object v10, v7

    move v11, v6

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 91
    move-object v9, v7

    move v10, v6

    aget-char v9, v9, v10

    const/16 v10, 0x29

    if-ne v9, v10, :cond_4

    .line 92
    goto :goto_1

    .line 94
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 97
    :cond_5
    move-object v9, v5

    move-object v10, v7

    move v11, v6

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_1

    .line 101
    .end local v8    # "currentChar":C
    :cond_6
    move v9, v3

    if-eqz v9, :cond_7

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 102
    :cond_7
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 105
    :cond_8
    move-object v9, v4

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    return-object v0
.end method


# virtual methods
.method public getCurrentToken()Ljava/lang/String;
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->tokens:[Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 124
    .local v1, "currentToken":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Invalid gradient specification: found empty token."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->tokens:[Ljava/lang/String;

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    return v0
.end method

.method public parsePoint(Ljava/lang/String;)Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    .locals 9

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    new-instance v3, Lcom/sun/javafx/scene/paint/GradientUtils$Point;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Lcom/sun/javafx/scene/paint/GradientUtils$Point;-><init>()V

    move-object v2, v3

    .line 181
    .local v2, "p":Lcom/sun/javafx/scene/paint/GradientUtils$Point;
    move-object v3, v1

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    .line 183
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 187
    :cond_0
    :goto_0
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    .line 188
    move-object v3, v2

    iget-boolean v3, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    if-eqz v3, :cond_1

    .line 189
    move-object v3, v2

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->value:D

    .line 192
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->proportionalSet:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->proportional:Z

    move-object v4, v2

    iget-boolean v4, v4, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    if-eq v3, v4, :cond_3

    .line 193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Invalid gradient specification:cannot mix proportional and non-proportional values"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_2
    move-object v3, v1

    const-string v4, "px"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 197
    :cond_3
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->proportionalSet:Z

    .line 198
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Lcom/sun/javafx/scene/paint/GradientUtils$Point;->proportional:Z

    iput-boolean v4, v3, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->proportional:Z

    .line 200
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    return-object v0
.end method

.method public parseStops(ZD)[Ljavafx/scene/paint/Stop;
    .locals 30

    .prologue
    .line 206
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move/from16 v3, p1

    .local v3, "proportional":Z
    move-wide/from16 v4, p2

    .local v4, "length":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->tokens:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->index:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v6, v20

    .line 207
    .local v6, "stopsCount":I
    move/from16 v20, v6

    move/from16 v0, v20

    new-array v0, v0, [Ljavafx/scene/paint/Color;

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 208
    .local v7, "colors":[Ljavafx/scene/paint/Color;
    move/from16 v20, v6

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 209
    .local v8, "offsets":[D
    move/from16 v20, v6

    move/from16 v0, v20

    new-array v0, v0, [Ljavafx/scene/paint/Stop;

    move-object/from16 v20, v0

    move-object/from16 v9, v20

    .line 211
    .local v9, "stops":[Ljavafx/scene/paint/Stop;
    const/16 v20, 0x0

    move/from16 v10, v20

    .local v10, "i":I
    :goto_0
    move/from16 v20, v10

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 212
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->tokens:[Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v21, v10

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->index:I

    move/from16 v22, v0

    add-int v21, v21, v22

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 213
    .local v11, "stopString":Ljava/lang/String;
    move-object/from16 v20, v2

    move-object/from16 v21, v11

    invoke-static {}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser$$Lambda$2;->lambdaFactory$()Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->splitString(Ljava/lang/String;Lcom/sun/javafx/scene/paint/GradientUtils$Parser$Delimiter;Z)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    .line 215
    .local v12, "stopTokens":[Ljava/lang/String;
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 216
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const-string v22, "Invalid gradient specification, empty stop found"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 220
    :cond_0
    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v13, v20

    .line 221
    .local v13, "currentToken":Ljava/lang/String;
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v14, v20

    .line 223
    .local v14, "offset":D
    move-object/from16 v20, v13

    invoke-static/range {v20 .. v20}, Ljavafx/scene/paint/Color;->web(Ljava/lang/String;)Ljavafx/scene/paint/Color;

    move-result-object v20

    move-object/from16 v16, v20

    .line 224
    .local v16, "c":Ljavafx/scene/paint/Color;
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 226
    move-object/from16 v20, v12

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v17, v20

    .line 227
    .local v17, "o":Ljava/lang/String;
    move-object/from16 v20, v17

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 228
    move-object/from16 v20, v17

    const/16 v21, 0x0

    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    .line 229
    move-object/from16 v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 239
    .line 244
    .end local v17    # "o":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v20, v7

    move/from16 v21, v10

    move-object/from16 v22, v16

    aput-object v22, v20, v21

    .line 245
    move-object/from16 v20, v8

    move/from16 v21, v10

    move-wide/from16 v22, v14

    aput-wide v22, v20, v21

    .line 211
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 230
    .restart local v17    # "o":Ljava/lang/String;
    :cond_2
    move/from16 v20, v3

    if-nez v20, :cond_4

    .line 231
    move-object/from16 v20, v17

    const-string v21, "px"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 232
    move-object/from16 v20, v17

    const/16 v21, 0x0

    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    add-int/lit8 v22, v22, -0x2

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    .line 234
    :cond_3
    move-object/from16 v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-wide/from16 v22, v4

    div-double v20, v20, v22

    move-wide/from16 v14, v20

    goto :goto_1

    .line 236
    :cond_4
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid gradient specification, non-proportional stops not permited in proportional gradient: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 239
    .end local v17    # "o":Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 240
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid gradient specification, unexpected content in stop specification: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v12

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 251
    .end local v11    # "stopString":Ljava/lang/String;
    .end local v12    # "stopTokens":[Ljava/lang/String;
    .end local v13    # "currentToken":Ljava/lang/String;
    .end local v14    # "offset":D
    .end local v16    # "c":Ljavafx/scene/paint/Color;
    :cond_6
    move-object/from16 v20, v8

    const/16 v21, 0x0

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_7

    .line 252
    move-object/from16 v20, v8

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    aput-wide v22, v20, v21

    .line 254
    :cond_7
    move-object/from16 v20, v8

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_8

    .line 255
    move-object/from16 v20, v8

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    aput-wide v22, v20, v21

    .line 261
    :cond_8
    move-object/from16 v20, v8

    const/16 v21, 0x0

    aget-wide v20, v20, v21

    move-wide/from16 v10, v20

    .line 262
    .local v10, "max":D
    const/16 v20, 0x1

    move/from16 v12, v20

    .local v12, "i":I
    :goto_2
    move/from16 v20, v12

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 263
    move-object/from16 v20, v8

    move/from16 v21, v12

    aget-wide v20, v20, v21

    move-wide/from16 v22, v10

    cmpg-double v20, v20, v22

    if-gez v20, :cond_9

    move-object/from16 v20, v8

    move/from16 v21, v12

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_9

    .line 264
    move-object/from16 v20, v8

    move/from16 v21, v12

    move-wide/from16 v22, v10

    aput-wide v22, v20, v21

    .line 262
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 266
    :cond_9
    move-object/from16 v20, v8

    move/from16 v21, v12

    aget-wide v20, v20, v21

    move-wide/from16 v10, v20

    goto :goto_3

    .line 274
    :cond_a
    const/16 v20, -0x1

    move/from16 v12, v20

    .line 275
    .local v12, "firstIndex":I
    const/16 v20, 0x1

    move/from16 v13, v20

    .local v13, "i":I
    :goto_4
    move/from16 v20, v13

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 276
    move-object/from16 v20, v8

    move/from16 v21, v13

    aget-wide v20, v20, v21

    move-wide/from16 v14, v20

    .line 277
    .restart local v14    # "offset":D
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_c

    move/from16 v20, v12

    if-gez v20, :cond_c

    .line 278
    move/from16 v20, v13

    move/from16 v12, v20

    .line 275
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 279
    :cond_c
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_b

    move/from16 v20, v12

    if-lez v20, :cond_b

    .line 280
    move/from16 v20, v13

    move/from16 v21, v12

    sub-int v20, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v16, v20

    .line 281
    .local v16, "n":I
    move-object/from16 v20, v8

    move/from16 v21, v13

    aget-wide v20, v20, v21

    move-object/from16 v22, v8

    move/from16 v23, v12

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget-wide v22, v22, v23

    sub-double v20, v20, v22

    move/from16 v22, v16

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v17, v20

    .line 282
    .local v17, "part":D
    const/16 v20, 0x0

    move/from16 v19, v20

    .local v19, "j":I
    :goto_5
    move/from16 v20, v19

    move/from16 v21, v16

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 283
    move-object/from16 v20, v8

    move/from16 v21, v12

    move/from16 v22, v19

    add-int v21, v21, v22

    move-object/from16 v22, v8

    move/from16 v23, v12

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget-wide v22, v22, v23

    move-wide/from16 v24, v17

    move/from16 v26, v19

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    aput-wide v22, v20, v21

    .line 282
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 288
    .end local v14    # "offset":D
    .end local v16    # "n":I
    .end local v17    # "part":D
    .end local v19    # "j":I
    :cond_d
    const/16 v20, 0x0

    move/from16 v13, v20

    :goto_6
    move/from16 v20, v13

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 289
    new-instance v20, Ljavafx/scene/paint/Stop;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v8

    move/from16 v23, v13

    aget-wide v22, v22, v23

    move-object/from16 v24, v7

    move/from16 v25, v13

    aget-object v24, v24, v25

    invoke-direct/range {v21 .. v24}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    move-object/from16 v14, v20

    .line 290
    .local v14, "stop":Ljavafx/scene/paint/Stop;
    move-object/from16 v20, v9

    move/from16 v21, v13

    move-object/from16 v22, v14

    aput-object v22, v20, v21

    .line 288
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 293
    .end local v14    # "stop":Ljavafx/scene/paint/Stop;
    :cond_e
    move-object/from16 v20, v9

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    return-object v2
.end method

.method public shift()V
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->index:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->index:I

    .line 120
    return-void
.end method

.method public splitCurrentToken()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/paint/GradientUtils$Parser;->getCurrentToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/paint/GradientUtils$Parser;
    return-object v0
.end method
