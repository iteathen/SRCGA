.class public final Ljavafx/scene/layout/BorderStrokeStyle;
.super Ljava/lang/Object;
.source "BorderStrokeStyle.java"


# static fields
.field public static final DASHED:Ljavafx/scene/layout/BorderStrokeStyle;

.field private static final DASHED_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOTTED:Ljavafx/scene/layout/BorderStrokeStyle;

.field private static final DOTTED_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:Ljavafx/scene/layout/BorderStrokeStyle;

.field public static final SOLID:Ljavafx/scene/layout/BorderStrokeStyle;


# instance fields
.field private final dashArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final dashOffset:D

.field private final hash:I

.field private final lineCap:Ljavafx/scene/shape/StrokeLineCap;

.field private final lineJoin:Ljavafx/scene/shape/StrokeLineJoin;

.field private final miterLimit:D

.field private final type:Ljavafx/scene/shape/StrokeType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    invoke-static {v1}, Ljavafx/scene/layout/BorderStrokeStyle;->asList([D)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED_LIST:Ljava/util/List;

    .line 46
    const/4 v1, 0x2

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    invoke-static {v1}, Ljavafx/scene/layout/BorderStrokeStyle;->asList([D)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED_LIST:Ljava/util/List;

    .line 51
    new-instance v1, Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    sget-object v3, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    sget-object v4, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    sget-object v5, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/layout/BorderStrokeStyle;-><init>(Ljavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineJoin;Ljavafx/scene/shape/StrokeLineCap;DDLjava/util/List;)V

    sput-object v1, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 57
    new-instance v1, Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    sget-object v3, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    sget-object v4, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    sget-object v5, Ljavafx/scene/shape/StrokeLineCap;->ROUND:Ljavafx/scene/shape/StrokeLineCap;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/16 v8, 0x0

    sget-object v10, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED_LIST:Ljava/util/List;

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/layout/BorderStrokeStyle;-><init>(Ljavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineJoin;Ljavafx/scene/shape/StrokeLineCap;DDLjava/util/List;)V

    sput-object v1, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 63
    new-instance v1, Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    sget-object v3, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    sget-object v4, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    sget-object v5, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/16 v8, 0x0

    sget-object v10, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED_LIST:Ljava/util/List;

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/layout/BorderStrokeStyle;-><init>(Ljavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineJoin;Ljavafx/scene/shape/StrokeLineCap;DDLjava/util/List;)V

    sput-object v1, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED:Ljavafx/scene/layout/BorderStrokeStyle;

    .line 69
    new-instance v1, Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    sget-object v3, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    sget-object v4, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    sget-object v5, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/layout/BorderStrokeStyle;-><init>(Ljavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineJoin;Ljavafx/scene/shape/StrokeLineCap;DDLjava/util/List;)V

    sput-object v1, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    return-void

    .line 45
    nop

    :array_0
    .array-data 8
        0x0
        0x4000000000000000L    # 2.0
    .end array-data

    .line 46
    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x3ff6666666666666L    # 1.4
    .end array-data
.end method

.method public constructor <init>(Ljavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineJoin;Ljavafx/scene/shape/StrokeLineCap;DDLjava/util/List;)V
    .locals 20
    .param p1    # Ljavafx/scene/shape/StrokeType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/shape/StrokeLineJoin;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "lineJoin"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/shape/StrokeLineCap;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "lineCap"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "miterLimit"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "dashOffset"
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "dashArray"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/shape/StrokeType;",
            "Ljavafx/scene/shape/StrokeLineJoin;",
            "Ljavafx/scene/shape/StrokeLineCap;",
            "DD",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v1, p1

    .local v1, "type":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v2, p2

    .local v2, "lineJoin":Ljavafx/scene/shape/StrokeLineJoin;
    move-object/from16 v3, p3

    .local v3, "lineCap":Ljavafx/scene/shape/StrokeLineCap;
    move-wide/from16 v4, p4

    .local v4, "miterLimit":D
    move-wide/from16 v6, p6

    .local v6, "dashOffset":D
    move-object/from16 v8, p8

    .local v8, "dashArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object v12, v0

    move-object v13, v1

    if-eqz v13, :cond_0

    move-object v13, v1

    :goto_0
    iput-object v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->type:Ljavafx/scene/shape/StrokeType;

    .line 158
    move-object v12, v0

    move-object v13, v2

    if-eqz v13, :cond_1

    move-object v13, v2

    :goto_1
    iput-object v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->lineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    .line 160
    move-object v12, v0

    move-object v13, v3

    if-eqz v13, :cond_2

    move-object v13, v3

    :goto_2
    iput-object v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->lineCap:Ljavafx/scene/shape/StrokeLineCap;

    .line 162
    move-object v12, v0

    move-wide v13, v4

    iput-wide v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->miterLimit:D

    .line 163
    move-object v12, v0

    move-wide v13, v6

    iput-wide v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->dashOffset:D

    .line 165
    move-object v12, v8

    if-nez v12, :cond_3

    .line 166
    move-object v12, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    .line 185
    :goto_3
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/layout/BorderStrokeStyle;->type:Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v12}, Ljavafx/scene/shape/StrokeType;->hashCode()I

    move-result v12

    move v9, v12

    .line 187
    .local v9, "result":I
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/layout/BorderStrokeStyle;->lineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v13}, Ljavafx/scene/shape/StrokeLineJoin;->hashCode()I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    .line 188
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/layout/BorderStrokeStyle;->lineCap:Ljavafx/scene/shape/StrokeLineCap;

    invoke-virtual {v13}, Ljavafx/scene/shape/StrokeLineCap;->hashCode()I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    .line 189
    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BorderStrokeStyle;->miterLimit:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_6

    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BorderStrokeStyle;->miterLimit:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    :goto_4
    move-wide v10, v12

    .line 190
    .local v10, "temp":J
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-wide v13, v10

    move-wide v15, v10

    const/16 v17, 0x20

    ushr-long v15, v15, v17

    xor-long/2addr v13, v15

    long-to-int v13, v13

    add-int/2addr v12, v13

    move v9, v12

    .line 191
    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BorderStrokeStyle;->dashOffset:D

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_7

    move-object v12, v0

    iget-wide v12, v12, Ljavafx/scene/layout/BorderStrokeStyle;->dashOffset:D

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    :goto_5
    move-wide v10, v12

    .line 192
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-wide v13, v10

    move-wide v15, v10

    const/16 v17, 0x20

    ushr-long v15, v15, v17

    xor-long/2addr v13, v15

    long-to-int v13, v13

    add-int/2addr v12, v13

    move v9, v12

    .line 193
    const/16 v12, 0x1f

    move v13, v9

    mul-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->hashCode()I

    move-result v13

    add-int/2addr v12, v13

    move v9, v12

    .line 194
    move-object v12, v0

    move v13, v9

    iput v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->hash:I

    .line 195
    return-void

    .line 156
    .end local v9    # "result":I
    .end local v10    # "temp":J
    :cond_0
    sget-object v13, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    goto/16 :goto_0

    .line 158
    :cond_1
    sget-object v13, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    goto/16 :goto_1

    .line 160
    :cond_2
    sget-object v13, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    goto/16 :goto_2

    .line 168
    :cond_3
    move-object v12, v8

    sget-object v13, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED_LIST:Ljava/util/List;

    if-eq v12, v13, :cond_4

    move-object v12, v8

    sget-object v13, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED_LIST:Ljava/util/List;

    if-ne v12, v13, :cond_5

    .line 171
    :cond_4
    move-object v12, v0

    move-object v13, v8

    iput-object v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    goto/16 :goto_3

    .line 175
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v8

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v12

    .line 176
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object v12, v0

    move-object v13, v9

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    goto/16 :goto_3

    .line 189
    .local v9, "result":I
    :cond_6
    const-wide/16 v12, 0x0

    goto :goto_4

    .line 191
    .restart local v10    # "temp":J
    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_5
.end method

.method private static varargs asList([D)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "items":[D
    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    .line 258
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 259
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "items":[D
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 234
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v2, p1

    .local v2, "o":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 246
    .end local v1    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    :goto_0
    return v1

    .line 235
    .restart local v1    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_0
    move-object v4, v1

    sget-object v5, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    sget-object v5, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v4, v5, :cond_2

    :cond_1
    move-object v4, v2

    sget-object v5, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v4, v5, :cond_3

    move-object v4, v1

    sget-object v5, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    if-eq v4, v5, :cond_3

    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 236
    :cond_3
    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_5

    :cond_4
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 237
    :cond_5
    move-object v4, v2

    check-cast v4, Ljavafx/scene/layout/BorderStrokeStyle;

    move-object v3, v4

    .line 238
    .local v3, "that":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->hash:I

    move-object v5, v3

    iget v5, v5, Ljavafx/scene/layout/BorderStrokeStyle;->hash:I

    if-eq v4, v5, :cond_6

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 239
    :cond_6
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->dashOffset:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BorderStrokeStyle;->dashOffset:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 240
    :cond_7
    move-object v4, v3

    iget-wide v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->miterLimit:D

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/BorderStrokeStyle;->miterLimit:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 241
    :cond_8
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 242
    :cond_9
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->lineCap:Ljavafx/scene/shape/StrokeLineCap;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/layout/BorderStrokeStyle;->lineCap:Ljavafx/scene/shape/StrokeLineCap;

    if-eq v4, v5, :cond_a

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 243
    :cond_a
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->lineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/layout/BorderStrokeStyle;->lineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    if-eq v4, v5, :cond_b

    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 244
    :cond_b
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->type:Ljavafx/scene/shape/StrokeType;

    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/layout/BorderStrokeStyle;->type:Ljavafx/scene/shape/StrokeType;

    if-eq v4, v5, :cond_c

    const/4 v4, 0x0

    move v1, v4

    goto/16 :goto_0

    .line 246
    :cond_c
    const/4 v4, 0x1

    move v1, v4

    goto/16 :goto_0
.end method

.method public final getDashArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    return-object v0
.end method

.method public final getDashOffset()D
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BorderStrokeStyle;->dashOffset:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    return-wide v0
.end method

.method public final getLineCap()Ljavafx/scene/shape/StrokeLineCap;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStrokeStyle;->lineCap:Ljavafx/scene/shape/StrokeLineCap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    return-object v0
.end method

.method public final getLineJoin()Ljavafx/scene/shape/StrokeLineJoin;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStrokeStyle;->lineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    return-object v0
.end method

.method public final getMiterLimit()D
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/layout/BorderStrokeStyle;->miterLimit:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    return-wide v0
.end method

.method public final getType()Ljavafx/scene/shape/StrokeType;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/BorderStrokeStyle;->type:Ljavafx/scene/shape/StrokeType;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/BorderStrokeStyle;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 201
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v3, v1

    sget-object v4, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v3, v4, :cond_0

    .line 202
    const-string v3, "BorderStyle.NONE"

    move-object v1, v3

    .line 226
    .end local v1    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    .local v2, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    .line 203
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v1    # "this":Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_0
    move-object v3, v1

    sget-object v4, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v3, v4, :cond_1

    .line 204
    const-string v3, "BorderStyle.DASHED"

    move-object v1, v3

    goto :goto_0

    .line 205
    :cond_1
    move-object v3, v1

    sget-object v4, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v3, v4, :cond_2

    .line 206
    const-string v3, "BorderStyle.DOTTED"

    move-object v1, v3

    goto :goto_0

    .line 207
    :cond_2
    move-object v3, v1

    sget-object v4, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v3, v4, :cond_3

    .line 208
    const-string v3, "BorderStyle.SOLID"

    move-object v1, v3

    goto :goto_0

    .line 210
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 211
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "BorderStyle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 212
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->type:Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 214
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->lineJoin:Ljavafx/scene/shape/StrokeLineJoin;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 215
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 216
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->lineCap:Ljavafx/scene/shape/StrokeLineCap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 217
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->miterLimit:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    move-object v3, v2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 220
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->dashOffset:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    move-object v3, v2

    const-string v4, ", ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 223
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/layout/BorderStrokeStyle;->dashArray:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    :cond_4
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto/16 :goto_0
.end method
