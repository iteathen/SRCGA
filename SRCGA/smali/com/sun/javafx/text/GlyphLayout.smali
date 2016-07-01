.class public abstract Lcom/sun/javafx/text/GlyphLayout;
.super Ljava/lang/Object;
.source "GlyphLayout.java"


# static fields
.field public static final CANONICAL_SUBSTITUTION:I = 0x40000000

.field public static final HINTING:I = 0x10

.field public static final LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final LAYOUT_NO_LIMIT_CONTEXT:I = 0x8

.field public static final LAYOUT_NO_START_CONTEXT:I = 0x4

.field public static final LAYOUT_RIGHT_TO_LEFT:I = 0x2

.field private static inUse:Z

.field private static isIdeographicMethod:Ljava/lang/reflect/Method;

.field private static reusableGL:Lcom/sun/javafx/text/GlyphLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 109
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/text/GlyphLayout;->isIdeographicMethod:Ljava/lang/reflect/Method;

    .line 112
    :try_start_0
    const-class v1, Ljava/lang/Character;

    const-string v2, "isIdeographic"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/text/GlyphLayout;->isIdeographicMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .line 372
    :goto_0
    invoke-static {}, Lcom/sun/javafx/text/GlyphLayout;->newInstance()Lcom/sun/javafx/text/GlyphLayout;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/text/GlyphLayout;->reusableGL:Lcom/sun/javafx/text/GlyphLayout;

    return-void

    .line 113
    :catch_0
    move-exception v1

    :goto_1
    move-object v0, v1

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/text/GlyphLayout;->isIdeographicMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/GlyphLayout;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTextRun(Lcom/sun/javafx/text/PrismTextLayout;[CIILcom/sun/javafx/font/PGFont;Lcom/sun/javafx/scene/text/TextSpan;BZ)Lcom/sun/javafx/text/TextRun;
    .locals 21

    .prologue
    .line 136
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/text/GlyphLayout;
    move-object/from16 v1, p1

    .local v1, "layout":Lcom/sun/javafx/text/PrismTextLayout;
    move-object/from16 v2, p2

    .local v2, "chars":[C
    move/from16 v3, p3

    .local v3, "start":I
    move/from16 v4, p4

    .local v4, "length":I
    move-object/from16 v5, p5

    .local v5, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v6, p6

    .local v6, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move/from16 v7, p7

    .local v7, "level":B
    move/from16 v8, p8

    .local v8, "complex":Z
    move v10, v8

    if-nez v10, :cond_0

    move v10, v7

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    .line 137
    :cond_0
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v10 .. v17}, Lcom/sun/javafx/text/GlyphLayout;->addTextRun(Lcom/sun/javafx/text/PrismTextLayout;[CIILcom/sun/javafx/font/PGFont;Lcom/sun/javafx/scene/text/TextSpan;B)Lcom/sun/javafx/text/TextRun;

    move-result-object v10

    move-object v0, v10

    .line 141
    .end local v0    # "this":Lcom/sun/javafx/text/GlyphLayout;
    :goto_0
    return-object v0

    .line 139
    .restart local v0    # "this":Lcom/sun/javafx/text/GlyphLayout;
    :cond_1
    new-instance v10, Lcom/sun/javafx/text/TextRun;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move v12, v3

    move v13, v4

    move v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/sun/javafx/text/TextRun;-><init>(IIBZILcom/sun/javafx/scene/text/TextSpan;IZ)V

    move-object v9, v10

    .line 140
    .local v9, "run":Lcom/sun/javafx/text/TextRun;
    move-object v10, v1

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/sun/javafx/text/PrismTextLayout;->addTextRun(Lcom/sun/javafx/text/TextRun;)V

    .line 141
    move-object v10, v9

    move-object v0, v10

    goto :goto_0
.end method

.method public static getInstance()Lcom/sun/javafx/text/GlyphLayout;
    .locals 5

    .prologue
    .line 388
    sget-boolean v2, Lcom/sun/javafx/text/GlyphLayout;->inUse:Z

    if-eqz v2, :cond_0

    .line 389
    invoke-static {}, Lcom/sun/javafx/text/GlyphLayout;->newInstance()Lcom/sun/javafx/text/GlyphLayout;

    move-result-object v2

    move-object v0, v2

    .line 396
    :goto_0
    return-object v0

    .line 391
    :cond_0
    const-class v2, Lcom/sun/javafx/text/GlyphLayout;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v0, v3

    monitor-enter v2

    .line 392
    :try_start_0
    sget-boolean v2, Lcom/sun/javafx/text/GlyphLayout;->inUse:Z

    if-eqz v2, :cond_1

    .line 393
    invoke-static {}, Lcom/sun/javafx/text/GlyphLayout;->newInstance()Lcom/sun/javafx/text/GlyphLayout;

    move-result-object v2

    move-object v3, v0

    monitor-exit v3

    move-object v0, v2

    goto :goto_0

    .line 395
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/javafx/text/GlyphLayout;->inUse:Z

    .line 396
    sget-object v2, Lcom/sun/javafx/text/GlyphLayout;->reusableGL:Lcom/sun/javafx/text/GlyphLayout;

    move-object v3, v0

    monitor-exit v3

    move-object v0, v2

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method private static isIdeographic(I)Z
    .locals 9

    .prologue
    .line 409
    move v0, p0

    .local v0, "codePoint":I
    sget-object v2, Lcom/sun/javafx/text/GlyphLayout;->isIdeographicMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 411
    :try_start_0
    sget-object v2, Lcom/sun/javafx/text/GlyphLayout;->isIdeographicMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v0, v2

    .line 416
    .end local v0    # "codePoint":I
    :goto_0
    return v0

    .line 412
    .restart local v0    # "codePoint":I
    :catch_0
    move-exception v2

    :goto_1
    move-object v1, v2

    .line 413
    .local v1, "ex":Ljava/lang/ReflectiveOperationException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 416
    .end local v1    # "ex":Ljava/lang/ReflectiveOperationException;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 412
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static newInstance()Lcom/sun/javafx/text/GlyphLayout;
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Lcom/sun/javafx/font/PrismFontFactory;->getFontFactory()Lcom/sun/javafx/font/PrismFontFactory;

    move-result-object v1

    move-object v0, v1

    .line 377
    .local v0, "factory":Lcom/sun/javafx/font/PrismFontFactory;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/font/PrismFontFactory;->createGlyphLayout()Lcom/sun/javafx/text/GlyphLayout;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "factory":Lcom/sun/javafx/font/PrismFontFactory;
    return-object v0
.end method


# virtual methods
.method protected addTextRun(Lcom/sun/javafx/text/PrismTextLayout;[CIILcom/sun/javafx/font/PGFont;Lcom/sun/javafx/scene/text/TextSpan;B)Lcom/sun/javafx/text/TextRun;
    .locals 20

    .prologue
    .line 122
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/text/GlyphLayout;
    move-object/from16 v1, p1

    .local v1, "layout":Lcom/sun/javafx/text/PrismTextLayout;
    move-object/from16 v2, p2

    .local v2, "chars":[C
    move/from16 v3, p3

    .local v3, "start":I
    move/from16 v4, p4

    .local v4, "length":I
    move-object/from16 v5, p5

    .local v5, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v6, p6

    .local v6, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move/from16 v7, p7

    .local v7, "level":B
    new-instance v9, Lcom/sun/javafx/text/TextRun;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move v11, v3

    move v12, v4

    move v13, v7

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v16, v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/sun/javafx/text/TextRun;-><init>(IIBZILcom/sun/javafx/scene/text/TextSpan;IZ)V

    move-object v8, v9

    .line 123
    .local v8, "run":Lcom/sun/javafx/text/TextRun;
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/javafx/text/PrismTextLayout;->addTextRun(Lcom/sun/javafx/text/TextRun;)V

    .line 124
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/text/GlyphLayout;
    return-object v0
.end method

.method public breakRuns(Lcom/sun/javafx/text/PrismTextLayout;[CI)I
    .locals 45

    .prologue
    .line 145
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/text/GlyphLayout;
    move-object/from16 v3, p1

    .local v3, "layout":Lcom/sun/javafx/text/PrismTextLayout;
    move-object/from16 v4, p2

    .local v4, "chars":[C
    move/from16 v5, p3

    .local v5, "flags":I
    move-object/from16 v34, v4

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v6, v34

    .line 146
    .local v6, "length":I
    const/16 v34, 0x0

    move/from16 v7, v34

    .line 147
    .local v7, "complex":Z
    const/16 v34, 0x0

    move/from16 v8, v34

    .line 148
    .local v8, "feature":Z
    const/16 v34, 0x0

    move/from16 v9, v34

    .line 149
    .local v9, "scriptRun":I
    const/16 v34, 0x0

    move/from16 v10, v34

    .line 151
    .local v10, "script":I
    const/16 v34, 0x1

    move/from16 v11, v34

    .line 152
    .local v11, "checkComplex":Z
    const/16 v34, 0x1

    move/from16 v12, v34

    .line 153
    .local v12, "checkBidi":Z
    move/from16 v34, v5

    const/16 v35, 0x2

    and-int/lit8 v34, v34, 0x2

    if-eqz v34, :cond_0

    .line 156
    move/from16 v34, v5

    const/16 v35, 0x10

    and-int/lit8 v34, v34, 0x10

    if-eqz v34, :cond_15

    const/16 v34, 0x1

    :goto_0
    move/from16 v11, v34

    .line 157
    move/from16 v34, v5

    const/16 v35, 0x8

    and-int/lit8 v34, v34, 0x8

    if-eqz v34, :cond_16

    const/16 v34, 0x1

    :goto_1
    move/from16 v12, v34

    .line 160
    :cond_0
    const/16 v34, 0x0

    move-object/from16 v13, v34

    .line 161
    .local v13, "run":Lcom/sun/javafx/text/TextRun;
    const/16 v34, 0x0

    move-object/from16 v14, v34

    .line 162
    .local v14, "bidi":Ljava/text/Bidi;
    const/16 v34, 0x0

    move/from16 v15, v34

    .line 163
    .local v15, "bidiLevel":B
    move/from16 v34, v6

    move/from16 v16, v34

    .line 164
    .local v16, "bidiEnd":I
    const/16 v34, 0x0

    move/from16 v17, v34

    .line 165
    .local v17, "bidiIndex":I
    const/16 v34, 0x0

    move/from16 v18, v34

    .line 166
    .local v18, "spanIndex":I
    const/16 v34, 0x0

    move-object/from16 v19, v34

    .line 167
    .local v19, "span":Lcom/sun/javafx/scene/text/TextSpan;
    move/from16 v34, v6

    move/from16 v20, v34

    .line 168
    .local v20, "spanEnd":I
    const/16 v34, 0x0

    move-object/from16 v21, v34

    .line 169
    .local v21, "font":Lcom/sun/javafx/font/PGFont;
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/PrismTextLayout;->getTextSpans()[Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v34

    move-object/from16 v22, v34

    .line 170
    .local v22, "spans":[Lcom/sun/javafx/scene/text/TextSpan;
    move-object/from16 v34, v22

    if-eqz v34, :cond_17

    .line 171
    move-object/from16 v34, v22

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    if-lez v34, :cond_1

    .line 172
    move-object/from16 v34, v22

    move/from16 v35, v18

    aget-object v34, v34, v35

    move-object/from16 v19, v34

    .line 173
    move-object/from16 v34, v19

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/scene/text/TextSpan;->getText()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v20, v34

    .line 174
    move-object/from16 v34, v19

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v21, v34

    .line 175
    move-object/from16 v34, v21

    if-nez v34, :cond_1

    .line 176
    move/from16 v34, v5

    const/16 v35, 0x20

    or-int/lit8 v34, v34, 0x20

    move/from16 v5, v34

    .line 182
    :cond_1
    :goto_2
    move-object/from16 v34, v21

    if-eqz v34, :cond_2

    .line 183
    move-object/from16 v34, v21

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/PGFont;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v34

    move-object/from16 v23, v34

    .line 184
    .local v23, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v34, v21

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/PGFont;->getFeatures()I

    move-result v34

    move/from16 v24, v34

    .line 185
    .local v24, "requestedFeatures":I
    move-object/from16 v34, v23

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/FontResource;->getFeatures()I

    move-result v34

    move/from16 v25, v34

    .line 186
    .local v25, "supportedFeatures":I
    move/from16 v34, v24

    move/from16 v35, v25

    and-int v34, v34, v35

    if-eqz v34, :cond_18

    const/16 v34, 0x1

    :goto_3
    move/from16 v8, v34

    .line 188
    .end local v23    # "fr":Lcom/sun/javafx/font/FontResource;
    .end local v24    # "requestedFeatures":I
    .end local v25    # "supportedFeatures":I
    :cond_2
    move/from16 v34, v12

    if-eqz v34, :cond_3

    move/from16 v34, v6

    if-lez v34, :cond_3

    .line 189
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/PrismTextLayout;->getDirection()I

    move-result v34

    move/from16 v23, v34

    .line 190
    .local v23, "direction":I
    new-instance v34, Ljava/text/Bidi;

    move-object/from16 v44, v34

    move-object/from16 v34, v44

    move-object/from16 v35, v44

    move-object/from16 v36, v4

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v6

    move/from16 v41, v23

    invoke-direct/range {v35 .. v41}, Ljava/text/Bidi;-><init>([CI[BIII)V

    move-object/from16 v14, v34

    .line 193
    move-object/from16 v34, v14

    move-object/from16 v35, v14

    move/from16 v36, v17

    invoke-virtual/range {v35 .. v36}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v34

    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v34, v0

    move/from16 v15, v34

    .line 194
    move-object/from16 v34, v14

    move/from16 v35, v17

    invoke-virtual/range {v34 .. v35}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v34

    move/from16 v16, v34

    .line 195
    move/from16 v34, v15

    const/16 v35, 0x1

    and-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_3

    .line 196
    move/from16 v34, v5

    const/16 v35, 0x18

    or-int/lit8 v34, v34, 0x18

    move/from16 v5, v34

    .line 200
    .end local v23    # "direction":I
    :cond_3
    const/16 v34, 0x0

    move/from16 v23, v34

    .line 201
    .local v23, "start":I
    const/16 v34, 0x0

    move/from16 v24, v34

    .line 202
    .local v24, "i":I
    :goto_4
    move/from16 v34, v24

    move/from16 v35, v6

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_20

    .line 203
    move-object/from16 v34, v4

    move/from16 v35, v24

    aget-char v34, v34, v35

    move/from16 v25, v34

    .line 204
    .local v25, "ch":C
    move/from16 v34, v25

    move/from16 v26, v34

    .line 205
    .local v26, "codePoint":I
    move/from16 v34, v25

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_4

    move/from16 v34, v25

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_4

    move/from16 v34, v25

    const/16 v35, 0xd

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    :cond_4
    const/16 v34, 0x1

    :goto_5
    move/from16 v27, v34

    .line 208
    .local v27, "delimiter":Z
    move/from16 v34, v27

    if-eqz v34, :cond_6

    .line 209
    move/from16 v34, v24

    move/from16 v35, v23

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_6

    .line 210
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v39, v23

    sub-int v38, v38, v39

    move-object/from16 v39, v21

    move-object/from16 v40, v19

    move/from16 v41, v15

    move/from16 v42, v7

    invoke-direct/range {v34 .. v42}, Lcom/sun/javafx/text/GlyphLayout;->addTextRun(Lcom/sun/javafx/text/PrismTextLayout;[CIILcom/sun/javafx/font/PGFont;Lcom/sun/javafx/scene/text/TextSpan;BZ)Lcom/sun/javafx/text/TextRun;

    move-result-object v34

    move-object/from16 v13, v34

    .line 212
    move/from16 v34, v7

    if-eqz v34, :cond_5

    .line 213
    move/from16 v34, v5

    const/16 v35, 0x10

    or-int/lit8 v34, v34, 0x10

    move/from16 v5, v34

    .line 214
    const/16 v34, 0x0

    move/from16 v7, v34

    .line 216
    :cond_5
    move/from16 v34, v24

    move/from16 v23, v34

    .line 219
    :cond_6
    move/from16 v34, v24

    move/from16 v35, v20

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1a

    move/from16 v34, v24

    move/from16 v35, v6

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1a

    const/16 v34, 0x1

    :goto_6
    move/from16 v28, v34

    .line 220
    .local v28, "spanChanged":Z
    move/from16 v34, v24

    move/from16 v35, v16

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1b

    move/from16 v34, v24

    move/from16 v35, v6

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    const/16 v34, 0x1

    :goto_7
    move/from16 v29, v34

    .line 221
    .local v29, "levelChanged":Z
    const/16 v34, 0x0

    move/from16 v30, v34

    .line 222
    .local v30, "scriptChanged":Z
    move/from16 v34, v27

    if-nez v34, :cond_f

    .line 223
    move/from16 v34, v7

    move/from16 v31, v34

    .line 224
    .local v31, "oldComplex":Z
    move/from16 v34, v11

    if-eqz v34, :cond_b

    .line 225
    move/from16 v34, v25

    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 227
    move/from16 v34, v24

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    move/from16 v35, v20

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    move-object/from16 v34, v4

    move/from16 v35, v24

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    aget-char v34, v34, v35

    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 228
    move/from16 v34, v25

    move-object/from16 v35, v4

    add-int/lit8 v24, v24, 0x1

    move/from16 v36, v24

    aget-char v35, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v34

    move/from16 v26, v34

    .line 232
    :cond_7
    move/from16 v34, v26

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/text/GlyphLayout;->isIdeographic(I)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 233
    move/from16 v34, v5

    const/16 v35, 0x40

    or-int/lit8 v34, v34, 0x40

    move/from16 v5, v34

    .line 237
    :cond_8
    move/from16 v34, v26

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/text/ScriptMapper;->getScript(I)I

    move-result v34

    move/from16 v10, v34

    .line 238
    move/from16 v34, v9

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_9

    move/from16 v34, v10

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_9

    move/from16 v34, v10

    move/from16 v35, v9

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_9

    .line 241
    const/16 v34, 0x1

    move/from16 v30, v34

    .line 243
    :cond_9
    move/from16 v34, v7

    if-nez v34, :cond_b

    .line 244
    move/from16 v34, v8

    if-nez v34, :cond_a

    move/from16 v34, v26

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/text/ScriptMapper;->isComplexCharCode(I)Z

    move-result v34

    if-eqz v34, :cond_1c

    :cond_a
    const/16 v34, 0x1

    :goto_8
    move/from16 v7, v34

    .line 248
    :cond_b
    move/from16 v34, v28

    if-nez v34, :cond_c

    move/from16 v34, v29

    if-nez v34, :cond_c

    move/from16 v34, v30

    if-eqz v34, :cond_e

    .line 249
    :cond_c
    move/from16 v34, v23

    move/from16 v35, v24

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_e

    .line 251
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v39, v23

    sub-int v38, v38, v39

    move-object/from16 v39, v21

    move-object/from16 v40, v19

    move/from16 v41, v15

    move/from16 v42, v31

    invoke-direct/range {v34 .. v42}, Lcom/sun/javafx/text/GlyphLayout;->addTextRun(Lcom/sun/javafx/text/PrismTextLayout;[CIILcom/sun/javafx/font/PGFont;Lcom/sun/javafx/scene/text/TextSpan;BZ)Lcom/sun/javafx/text/TextRun;

    move-result-object v34

    move-object/from16 v13, v34

    .line 253
    move/from16 v34, v7

    if-eqz v34, :cond_d

    .line 254
    move/from16 v34, v5

    const/16 v35, 0x10

    or-int/lit8 v34, v34, 0x10

    move/from16 v5, v34

    .line 255
    const/16 v34, 0x0

    move/from16 v7, v34

    .line 257
    :cond_d
    move/from16 v34, v24

    move/from16 v23, v34

    .line 260
    :cond_e
    add-int/lit8 v24, v24, 0x1

    .line 262
    .end local v31    # "oldComplex":Z
    :cond_f
    move/from16 v34, v28

    if-eqz v34, :cond_10

    .line 264
    move-object/from16 v34, v22

    add-int/lit8 v18, v18, 0x1

    move/from16 v35, v18

    aget-object v34, v34, v35

    move-object/from16 v19, v34

    .line 265
    move/from16 v34, v20

    move-object/from16 v35, v19

    invoke-interface/range {v35 .. v35}, Lcom/sun/javafx/scene/text/TextSpan;->getText()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v20, v34

    .line 266
    move-object/from16 v34, v19

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/scene/text/TextSpan;->getFont()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v21, v34

    .line 267
    move-object/from16 v34, v21

    if-nez v34, :cond_1d

    .line 268
    move/from16 v34, v5

    const/16 v35, 0x20

    or-int/lit8 v34, v34, 0x20

    move/from16 v5, v34

    .line 276
    :cond_10
    :goto_9
    move/from16 v34, v29

    if-eqz v34, :cond_11

    .line 277
    add-int/lit8 v17, v17, 0x1

    .line 280
    move-object/from16 v34, v14

    move-object/from16 v35, v14

    move/from16 v36, v17

    invoke-virtual/range {v35 .. v36}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v34

    move/from16 v0, v34

    int-to-byte v0, v0

    move/from16 v34, v0

    move/from16 v15, v34

    .line 281
    move-object/from16 v34, v14

    move/from16 v35, v17

    invoke-virtual/range {v34 .. v35}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v34

    move/from16 v16, v34

    .line 282
    move/from16 v34, v15

    const/16 v35, 0x1

    and-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_11

    .line 283
    move/from16 v34, v5

    const/16 v35, 0x18

    or-int/lit8 v34, v34, 0x18

    move/from16 v5, v34

    .line 286
    :cond_11
    move/from16 v34, v30

    if-eqz v34, :cond_12

    .line 287
    move/from16 v34, v10

    move/from16 v9, v34

    .line 289
    :cond_12
    move/from16 v34, v27

    if-eqz v34, :cond_14

    .line 290
    add-int/lit8 v24, v24, 0x1

    .line 292
    move/from16 v34, v25

    const/16 v35, 0xd

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    move/from16 v34, v24

    move/from16 v35, v20

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_13

    move-object/from16 v34, v4

    move/from16 v35, v24

    aget-char v34, v34, v35

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_13

    .line 293
    add-int/lit8 v24, v24, 0x1

    .line 297
    :cond_13
    new-instance v34, Lcom/sun/javafx/text/TextRun;

    move-object/from16 v44, v34

    move-object/from16 v34, v44

    move-object/from16 v35, v44

    move/from16 v36, v23

    move/from16 v37, v24

    move/from16 v38, v23

    sub-int v37, v37, v38

    move/from16 v38, v15

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v41, v19

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v35 .. v43}, Lcom/sun/javafx/text/TextRun;-><init>(IIBZILcom/sun/javafx/scene/text/TextSpan;IZ)V

    move-object/from16 v13, v34

    .line 299
    move/from16 v34, v25

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1f

    .line 300
    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextRun;->setTab()V

    .line 301
    move/from16 v34, v5

    const/16 v35, 0x4

    or-int/lit8 v34, v34, 0x4

    move/from16 v5, v34

    .line 305
    :goto_a
    move-object/from16 v34, v3

    move-object/from16 v35, v13

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/text/PrismTextLayout;->addTextRun(Lcom/sun/javafx/text/TextRun;)V

    .line 306
    move/from16 v34, v24

    move/from16 v23, v34

    .line 308
    :cond_14
    goto/16 :goto_4

    .line 156
    .end local v13    # "run":Lcom/sun/javafx/text/TextRun;
    .end local v14    # "bidi":Ljava/text/Bidi;
    .end local v15    # "bidiLevel":B
    .end local v16    # "bidiEnd":I
    .end local v17    # "bidiIndex":I
    .end local v18    # "spanIndex":I
    .end local v19    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .end local v20    # "spanEnd":I
    .end local v21    # "font":Lcom/sun/javafx/font/PGFont;
    .end local v22    # "spans":[Lcom/sun/javafx/scene/text/TextSpan;
    .end local v23    # "start":I
    .end local v24    # "i":I
    .end local v25    # "ch":C
    .end local v26    # "codePoint":I
    .end local v27    # "delimiter":Z
    .end local v28    # "spanChanged":Z
    .end local v29    # "levelChanged":Z
    .end local v30    # "scriptChanged":Z
    :cond_15
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 157
    :cond_16
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 180
    .restart local v13    # "run":Lcom/sun/javafx/text/TextRun;
    .restart local v14    # "bidi":Ljava/text/Bidi;
    .restart local v15    # "bidiLevel":B
    .restart local v16    # "bidiEnd":I
    .restart local v17    # "bidiIndex":I
    .restart local v18    # "spanIndex":I
    .restart local v19    # "span":Lcom/sun/javafx/scene/text/TextSpan;
    .restart local v20    # "spanEnd":I
    .restart local v21    # "font":Lcom/sun/javafx/font/PGFont;
    .restart local v22    # "spans":[Lcom/sun/javafx/scene/text/TextSpan;
    :cond_17
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/PrismTextLayout;->getFont()Lcom/sun/javafx/font/PGFont;

    move-result-object v34

    move-object/from16 v21, v34

    goto/16 :goto_2

    .line 186
    .local v23, "fr":Lcom/sun/javafx/font/FontResource;
    .local v24, "requestedFeatures":I
    .local v25, "supportedFeatures":I
    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 205
    .local v23, "start":I
    .local v24, "i":I
    .local v25, "ch":C
    .restart local v26    # "codePoint":I
    :cond_19
    const/16 v34, 0x0

    goto/16 :goto_5

    .line 219
    .restart local v27    # "delimiter":Z
    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 220
    .restart local v28    # "spanChanged":Z
    :cond_1b
    const/16 v34, 0x0

    goto/16 :goto_7

    .line 244
    .restart local v29    # "levelChanged":Z
    .restart local v30    # "scriptChanged":Z
    .restart local v31    # "oldComplex":Z
    :cond_1c
    const/16 v34, 0x0

    goto/16 :goto_8

    .line 270
    .end local v31    # "oldComplex":Z
    :cond_1d
    move-object/from16 v34, v21

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/PGFont;->getFontResource()Lcom/sun/javafx/font/FontResource;

    move-result-object v34

    move-object/from16 v31, v34

    .line 271
    .local v31, "fr":Lcom/sun/javafx/font/FontResource;
    move-object/from16 v34, v21

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/PGFont;->getFeatures()I

    move-result v34

    move/from16 v32, v34

    .line 272
    .local v32, "requestedFeatures":I
    move-object/from16 v34, v31

    invoke-interface/range {v34 .. v34}, Lcom/sun/javafx/font/FontResource;->getFeatures()I

    move-result v34

    move/from16 v33, v34

    .line 273
    .local v33, "supportedFeatures":I
    move/from16 v34, v32

    move/from16 v35, v33

    and-int v34, v34, v35

    if-eqz v34, :cond_1e

    const/16 v34, 0x1

    :goto_b
    move/from16 v8, v34

    goto/16 :goto_9

    :cond_1e
    const/16 v34, 0x0

    goto :goto_b

    .line 303
    .end local v31    # "fr":Lcom/sun/javafx/font/FontResource;
    .end local v32    # "requestedFeatures":I
    .end local v33    # "supportedFeatures":I
    :cond_1f
    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextRun;->setLinebreak()V

    goto :goto_a

    .line 311
    .end local v25    # "ch":C
    .end local v26    # "codePoint":I
    .end local v27    # "delimiter":Z
    .end local v28    # "spanChanged":Z
    .end local v29    # "levelChanged":Z
    .end local v30    # "scriptChanged":Z
    :cond_20
    move/from16 v34, v23

    move/from16 v35, v6

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_23

    .line 312
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move/from16 v37, v23

    move/from16 v38, v6

    move/from16 v39, v23

    sub-int v38, v38, v39

    move-object/from16 v39, v21

    move-object/from16 v40, v19

    move/from16 v41, v15

    move/from16 v42, v7

    invoke-direct/range {v34 .. v42}, Lcom/sun/javafx/text/GlyphLayout;->addTextRun(Lcom/sun/javafx/text/PrismTextLayout;[CIILcom/sun/javafx/font/PGFont;Lcom/sun/javafx/scene/text/TextSpan;BZ)Lcom/sun/javafx/text/TextRun;

    move-result-object v34

    .line 314
    move/from16 v34, v7

    if-eqz v34, :cond_21

    .line 315
    move/from16 v34, v5

    const/16 v35, 0x10

    or-int/lit8 v34, v34, 0x10

    move/from16 v5, v34

    .line 325
    :cond_21
    :goto_c
    move-object/from16 v34, v14

    if-eqz v34, :cond_22

    .line 326
    move-object/from16 v34, v14

    invoke-virtual/range {v34 .. v34}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v34

    if-nez v34, :cond_22

    .line 327
    move/from16 v34, v5

    const/16 v35, 0x100

    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x100

    move/from16 v34, v0

    move/from16 v5, v34

    .line 330
    :cond_22
    move/from16 v34, v5

    const/16 v35, 0x2

    or-int/lit8 v34, v34, 0x2

    move/from16 v5, v34

    .line 331
    move/from16 v34, v5

    move/from16 v2, v34

    .end local v2    # "this":Lcom/sun/javafx/text/GlyphLayout;
    return v2

    .line 319
    .restart local v2    # "this":Lcom/sun/javafx/text/GlyphLayout;
    :cond_23
    move-object/from16 v34, v13

    if-eqz v34, :cond_24

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/text/TextRun;->isLinebreak()Z

    move-result v34

    if-eqz v34, :cond_21

    .line 320
    :cond_24
    new-instance v34, Lcom/sun/javafx/text/TextRun;

    move-object/from16 v44, v34

    move-object/from16 v34, v44

    move-object/from16 v35, v44

    move/from16 v36, v23

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v41, v19

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-direct/range {v35 .. v43}, Lcom/sun/javafx/text/TextRun;-><init>(IIBZILcom/sun/javafx/scene/text/TextSpan;IZ)V

    move-object/from16 v13, v34

    .line 322
    move-object/from16 v34, v3

    move-object/from16 v35, v13

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/text/PrismTextLayout;->addTextRun(Lcom/sun/javafx/text/TextRun;)V

    goto :goto_c
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/GlyphLayout;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/text/GlyphLayout;->reusableGL:Lcom/sun/javafx/text/GlyphLayout;

    if-ne v1, v2, :cond_0

    .line 404
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/javafx/text/GlyphLayout;->inUse:Z

    .line 406
    :cond_0
    return-void
.end method

.method protected getInitialSlot(Lcom/sun/javafx/font/FontResource;)I
    .locals 6

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/GlyphLayout;
    move-object v1, p1

    .local v1, "fr":Lcom/sun/javafx/font/FontResource;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/font/PrismFontFactory;->isJreFont(Lcom/sun/javafx/font/FontResource;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v2, :cond_0

    .line 354
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Avoiding JRE Font: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/font/FontResource;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 358
    .end local v0    # "this":Lcom/sun/javafx/text/GlyphLayout;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/text/GlyphLayout;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public abstract layout(Lcom/sun/javafx/text/TextRun;Lcom/sun/javafx/font/PGFont;Lcom/sun/javafx/font/FontStrike;[C)V
.end method
