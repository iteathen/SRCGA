.class public Lcom/sun/javafx/css/ParsedValueImpl;
.super Ljavafx/css/ParsedValue;
.source "ParsedValueImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/css/ParsedValue",
        "<TV;TT;>;"
    }
.end annotation


# static fields
.field private static final ARRAY_OF_VALUE_ARRAY:B = 0x3t

.field private static final BOOLEAN:B = 0x7t

.field private static final COLOR:B = 0x5t

.field private static final ENUM:B = 0x6t

.field private static final NULL_VALUE:B = 0x0t

.field private static final SIZE:B = 0x9t

.field private static final STRING:B = 0x4t

.field private static final URL:B = 0x8t

.field private static final VALUE:B = 0x1t

.field private static final VALUE_ARRAY:B = 0x2t

.field private static indent:I


# instance fields
.field private final containsLookups:Z

.field private hash:I

.field private final lookup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    sput v0, Lcom/sun/javafx/css/ParsedValueImpl;->indent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljavafx/css/StyleConverter",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, p2

    .local v2, "type":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<TV;TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljavafx/css/StyleConverter",
            "<TV;TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<TV;TT;>;"
    move v3, p3

    .local v3, "lookup":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/ParsedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    .line 385
    move-object v4, v0

    const/high16 v5, -0x80000000

    iput v5, v4, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    .line 174
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/javafx/css/ParsedValueImpl;->lookup:Z

    .line 175
    move-object v4, v0

    move v5, v3

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/css/ParsedValueImpl;->getContainsLookupsFlag(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lcom/sun/javafx/css/ParsedValueImpl;->containsLookups:Z

    .line 176
    return-void

    .line 175
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 230
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object/from16 v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "tag":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    .line 231
    .local v4, "newline":Ljava/lang/String;
    move-object v14, v2

    instance-of v14, v14, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v14, :cond_4

    .line 232
    move-object v14, v2

    check-cast v14, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v14, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v5, v14

    .line 233
    .local v5, "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3c

    .line 234
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    .line 235
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " layers=\""

    .line 236
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v5

    array-length v15, v15

    .line 237
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\">"

    .line 238
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    .line 239
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 240
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->indent()V

    .line 241
    move-object v14, v5

    move-object v6, v14

    move-object v14, v6

    array-length v14, v14

    move v7, v14

    const/4 v14, 0x0

    move v8, v14

    :goto_0
    move v14, v8

    move v15, v7

    if-ge v14, v15, :cond_3

    move-object v14, v6

    move v15, v8

    aget-object v14, v14, v15

    move-object v9, v14

    .line 242
    .local v9, "layer":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "<layer>"

    .line 243
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    .line 244
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 245
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->indent()V

    .line 246
    move-object v14, v9

    if-nez v14, :cond_0

    .line 247
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 248
    .line 241
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 250
    :cond_0
    move-object v14, v9

    move-object v10, v14

    move-object v14, v10

    array-length v14, v14

    move v11, v14

    const/4 v14, 0x0

    move v12, v14

    :goto_2
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_2

    move-object v14, v10

    move v15, v12

    aget-object v14, v14, v15

    move-object v13, v14

    .line 251
    .local v13, "val":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v13

    if-nez v14, :cond_1

    .line 252
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 250
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 254
    :cond_1
    move-object v14, v1

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    goto :goto_3

    .line 257
    .end local v13    # "val":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_2
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->outdent()V

    .line 258
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</layer>"

    .line 259
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    .line 260
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    goto :goto_1

    .line 262
    .end local v9    # "layer":[Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_3
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->outdent()V

    .line 263
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 265
    .line 295
    .end local v5    # "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    :goto_4
    return-void

    .line 265
    :cond_4
    move-object v14, v2

    instance-of v14, v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v14, :cond_7

    .line 266
    move-object v14, v2

    check-cast v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v14, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v5, v14

    .line 267
    .local v5, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3c

    .line 268
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    .line 269
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " values=\""

    .line 270
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v5

    array-length v15, v15

    .line 271
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\">"

    .line 272
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    .line 273
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 274
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->indent()V

    .line 275
    move-object v14, v5

    move-object v6, v14

    move-object v14, v6

    array-length v14, v14

    move v7, v14

    const/4 v14, 0x0

    move v8, v14

    :goto_5
    move v14, v8

    move v15, v7

    if-ge v14, v15, :cond_6

    move-object v14, v6

    move v15, v8

    aget-object v14, v14, v15

    move-object v9, v14

    .line 276
    .local v9, "val":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v14, v9

    if-nez v14, :cond_5

    .line 277
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 275
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 279
    :cond_5
    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    goto :goto_6

    .line 282
    .end local v9    # "val":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_6
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->outdent()V

    .line 283
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 284
    goto/16 :goto_4

    .end local v5    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_7
    move-object v14, v2

    instance-of v14, v14, Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v14, :cond_8

    .line 285
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 286
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->indent()V

    .line 287
    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 288
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->outdent()V

    .line 289
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    goto/16 :goto_4

    .line 291
    :cond_8
    move-object v14, v1

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 292
    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 293
    move-object v14, v1

    const-string v15, "</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    goto/16 :goto_4
.end method

.method public static containsFontRelativeSize(Ljavafx/css/ParsedValue;Z)Z
    .locals 10

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "parsedValue":Ljavafx/css/ParsedValue;
    move v1, p1

    .local v1, "percentUnitsAreRelative":Z
    const/4 v7, 0x0

    move v2, v7

    .line 120
    .local v2, "needsFont":Z
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 122
    .local v3, "obj":Ljava/lang/Object;
    move-object v7, v3

    instance-of v7, v7, Lcom/sun/javafx/css/Size;

    if-eqz v7, :cond_3

    .line 123
    move-object v7, v3

    check-cast v7, Lcom/sun/javafx/css/Size;

    move-object v4, v7

    .line 125
    .local v4, "size":Lcom/sun/javafx/css/Size;
    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v7

    sget-object v8, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    if-ne v7, v8, :cond_1

    move v7, v1

    .line 127
    :goto_0
    move v2, v7

    .line 162
    .end local v4    # "size":Lcom/sun/javafx/css/Size;
    :cond_0
    :goto_1
    move v7, v2

    move v0, v7

    .end local v0    # "parsedValue":Ljavafx/css/ParsedValue;
    return v0

    .line 125
    .restart local v0    # "parsedValue":Ljavafx/css/ParsedValue;
    .restart local v4    # "size":Lcom/sun/javafx/css/Size;
    :cond_1
    move-object v7, v4

    .line 127
    invoke-virtual {v7}, Lcom/sun/javafx/css/Size;->isAbsolute()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 130
    .end local v4    # "size":Lcom/sun/javafx/css/Size;
    :cond_3
    move-object v7, v3

    instance-of v7, v7, Ljavafx/css/ParsedValue;

    if-eqz v7, :cond_4

    .line 131
    move-object v7, v3

    check-cast v7, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v7

    .line 132
    .local v4, "value":Ljavafx/css/ParsedValue;
    move-object v7, v4

    move v8, v1

    invoke-static {v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;->containsFontRelativeSize(Ljavafx/css/ParsedValue;Z)Z

    move-result v7

    move v2, v7

    .line 133
    goto :goto_1

    .line 135
    .end local v4    # "value":Ljavafx/css/ParsedValue;
    :cond_4
    move-object v7, v3

    instance-of v7, v7, [Ljavafx/css/ParsedValue;

    if-eqz v7, :cond_7

    .line 136
    move-object v7, v3

    check-cast v7, [Ljavafx/css/ParsedValue;

    check-cast v7, [Ljavafx/css/ParsedValue;

    move-object v4, v7

    .line 137
    .local v4, "values":[Ljavafx/css/ParsedValue;
    const/4 v7, 0x0

    move v5, v7

    .line 138
    .local v5, "v":I
    :goto_2
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_6

    move v7, v2

    if-nez v7, :cond_6

    .line 141
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    if-nez v7, :cond_5

    .line 139
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 142
    :cond_5
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move v8, v1

    invoke-static {v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;->containsFontRelativeSize(Ljavafx/css/ParsedValue;Z)Z

    move-result v7

    move v2, v7

    goto :goto_3

    .line 145
    :cond_6
    goto :goto_1

    .end local v4    # "values":[Ljavafx/css/ParsedValue;
    .end local v5    # "v":I
    :cond_7
    move-object v7, v3

    instance-of v7, v7, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v7, :cond_0

    .line 146
    move-object v7, v3

    check-cast v7, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v7, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v7

    .line 147
    .local v4, "values":[[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v7, 0x0

    move v5, v7

    .line 148
    .local v5, "l":I
    :goto_4
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_0

    move v7, v2

    if-nez v7, :cond_0

    .line 151
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    if-nez v7, :cond_9

    .line 149
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 152
    :cond_9
    const/4 v7, 0x0

    move v6, v7

    .line 153
    .local v6, "v":I
    :goto_5
    move v7, v6

    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    array-length v8, v8

    if-ge v7, v8, :cond_8

    move v7, v2

    if-nez v7, :cond_8

    .line 156
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    aget-object v7, v7, v8

    if-nez v7, :cond_a

    .line 154
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 157
    :cond_a
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    aget-object v7, v7, v8

    move v8, v1

    invoke-static {v7, v8}, Lcom/sun/javafx/css/ParsedValueImpl;->containsFontRelativeSize(Ljavafx/css/ParsedValue;Z)Z

    move-result v7

    move v2, v7

    goto :goto_6
.end method

.method private static getContainsLookupsFlag(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    move v1, v5

    .line 65
    .local v1, "containsLookupsFlag":Z
    move-object v5, v0

    instance-of v5, v5, Lcom/sun/javafx/css/Size;

    if-eqz v5, :cond_1

    .line 66
    const/4 v5, 0x0

    move v1, v5

    .line 112
    :cond_0
    :goto_0
    move v5, v1

    move v0, v5

    .end local v0    # "obj":Ljava/lang/Object;
    return v0

    .line 69
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    move-object v5, v0

    instance-of v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v5, :cond_4

    .line 70
    move-object v5, v0

    check-cast v5, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v2, v5

    .line 71
    .local v2, "value":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v5, v2

    iget-boolean v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->lookup:Z

    if-nez v5, :cond_2

    move-object v5, v2

    iget-boolean v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->containsLookups:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move v1, v5

    .line 72
    goto :goto_0

    .line 71
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 74
    .end local v2    # "value":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_4
    move-object v5, v0

    instance-of v5, v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v5, :cond_9

    .line 75
    move-object v5, v0

    check-cast v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v2, v5

    .line 76
    .local v2, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v5, 0x0

    move v3, v5

    .line 79
    .local v3, "v":I
    :goto_2
    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_8

    move v5, v1

    if-nez v5, :cond_8

    .line 82
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_6

    .line 83
    move v5, v1

    if-nez v5, :cond_5

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->lookup:Z

    if-nez v5, :cond_5

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->containsLookups:Z

    if-eqz v5, :cond_7

    :cond_5
    const/4 v5, 0x1

    :goto_3
    move v1, v5

    .line 80
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 83
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 90
    :cond_8
    goto :goto_0

    .end local v2    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v3    # "v":I
    :cond_9
    move-object v5, v0

    instance-of v5, v5, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v5, :cond_0

    .line 91
    move-object v5, v0

    check-cast v5, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v5, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v2, v5

    .line 92
    .local v2, "values":[[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v5, 0x0

    move v3, v5

    .line 93
    .local v3, "l":I
    :goto_4
    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_0

    move v5, v1

    if-nez v5, :cond_0

    .line 96
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_d

    .line 97
    const/4 v5, 0x0

    move v4, v5

    .line 98
    .local v4, "v":I
    :goto_5
    move v5, v4

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    array-length v6, v6

    if-ge v5, v6, :cond_d

    move v5, v1

    if-nez v5, :cond_d

    .line 101
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_b

    .line 102
    move v5, v1

    if-nez v5, :cond_a

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move v6, v4

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->lookup:Z

    if-nez v5, :cond_a

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move v6, v4

    aget-object v5, v5, v6

    iget-boolean v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->containsLookups:Z

    if-eqz v5, :cond_c

    :cond_a
    const/4 v5, 0x1

    :goto_6
    move v1, v5

    .line 99
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 102
    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    .line 94
    .end local v4    # "v":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private static indent()V
    .locals 2

    .prologue
    .line 200
    sget v0, Lcom/sun/javafx/css/ParsedValueImpl;->indent:I

    const/4 v1, 0x2

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sun/javafx/css/ParsedValueImpl;->indent:I

    .line 201
    return-void
.end method

.method private static outdent()V
    .locals 3

    .prologue
    .line 204
    const/4 v0, 0x0

    sget v1, Lcom/sun/javafx/css/ParsedValueImpl;->indent:I

    const/4 v2, 0x2

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/sun/javafx/css/ParsedValueImpl;->indent:I

    .line 205
    return-void
.end method

.method public static readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    move/from16 v3, p0

    .local v3, "bssVersion":I
    move-object/from16 v4, p1

    .local v4, "is":Ljava/io/DataInputStream;
    move-object/from16 v5, p2

    .local v5, "strings":[Ljava/lang/String;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    move/from16 v6, v18

    .line 566
    .local v6, "lookup":Z
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    move/from16 v7, v18

    .line 568
    .local v7, "hasType":Z
    move/from16 v18, v7

    if-eqz v18, :cond_0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-static/range {v18 .. v19}, Lcom/sun/javafx/css/StyleConverterImpl;->readBinary(Ljava/io/DataInputStream;[Ljava/lang/String;)Ljavafx/css/StyleConverter;

    move-result-object v18

    :goto_0
    move-object/from16 v8, v18

    .line 570
    .local v8, "converter":Ljavafx/css/StyleConverter;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    move/from16 v9, v18

    .line 572
    .local v9, "valType":I
    move/from16 v18, v9

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 573
    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-static/range {v18 .. v20}, Lcom/sun/javafx/css/ParsedValueImpl;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v18

    move-object/from16 v10, v18

    .line 574
    .local v10, "value":Lcom/sun/javafx/css/ParsedValueImpl;
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    .line 692
    .end local v3    # "bssVersion":I
    .end local v10    # "value":Lcom/sun/javafx/css/ParsedValueImpl;
    :goto_1
    return-object v3

    .line 568
    .end local v8    # "converter":Ljavafx/css/StyleConverter;
    .end local v9    # "valType":I
    .restart local v3    # "bssVersion":I
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 576
    .restart local v8    # "converter":Ljavafx/css/StyleConverter;
    .restart local v9    # "valType":I
    :cond_1
    move/from16 v18, v9

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 577
    move/from16 v18, v3

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 580
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 582
    :cond_2
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v10, v18

    .line 583
    .local v10, "nVals":I
    move/from16 v18, v10

    if-lez v18, :cond_3

    move/from16 v18, v10

    move/from16 v0, v18

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v18, v0

    :goto_2
    move-object/from16 v11, v18

    .line 586
    .local v11, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "v":I
    :goto_3
    move/from16 v18, v12

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 587
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    move/from16 v13, v18

    .line 588
    .local v13, "vtype":I
    move/from16 v18, v13

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 589
    move-object/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v20

    aput-object v20, v18, v19

    .line 586
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 583
    .end local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "v":I
    .end local v13    # "vtype":I
    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    .line 591
    .restart local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v12    # "v":I
    .restart local v13    # "vtype":I
    :cond_4
    move-object/from16 v18, v11

    move/from16 v19, v12

    const/16 v20, 0x0

    aput-object v20, v18, v19

    goto :goto_4

    .line 594
    .end local v13    # "vtype":I
    :cond_5
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v11

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 596
    .end local v10    # "nVals":I
    .end local v11    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "v":I
    :cond_6
    move/from16 v18, v9

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 597
    move/from16 v18, v3

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 600
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 603
    :cond_7
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v10, v18

    .line 604
    .local v10, "nLayers":I
    move/from16 v18, v10

    if-lez v18, :cond_9

    move/from16 v18, v10

    const/16 v19, 0x0

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v19

    const-class v18, Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[Lcom/sun/javafx/css/ParsedValueImpl;

    :goto_5
    move-object/from16 v11, v18

    .line 606
    .local v11, "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "l":I
    :goto_6
    move/from16 v18, v12

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 607
    move/from16 v18, v3

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 610
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    .line 612
    :cond_8
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v13, v18

    .line 614
    .local v13, "nVals":I
    move-object/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    if-lez v20, :cond_a

    move/from16 v20, v13

    move/from16 v0, v20

    new-array v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v20, v0

    :goto_7
    aput-object v20, v18, v19

    .line 616
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "v":I
    :goto_8
    move/from16 v18, v14

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 617
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readByte()B

    move-result v18

    move/from16 v15, v18

    .line 618
    .local v15, "vtype":I
    move/from16 v18, v15

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 619
    move-object/from16 v18, v11

    move/from16 v19, v12

    aget-object v18, v18, v19

    move/from16 v19, v14

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    invoke-static/range {v20 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v20

    aput-object v20, v18, v19

    .line 616
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 604
    .end local v11    # "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "l":I
    .end local v13    # "nVals":I
    .end local v14    # "v":I
    .end local v15    # "vtype":I
    :cond_9
    const/16 v18, 0x0

    check-cast v18, [[Lcom/sun/javafx/css/ParsedValueImpl;

    goto :goto_5

    .line 614
    .restart local v11    # "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v12    # "l":I
    .restart local v13    # "nVals":I
    :cond_a
    const/16 v20, 0x0

    goto :goto_7

    .line 621
    .restart local v14    # "v":I
    .restart local v15    # "vtype":I
    :cond_b
    move-object/from16 v18, v11

    move/from16 v19, v12

    aget-object v18, v18, v19

    move/from16 v19, v14

    const/16 v20, 0x0

    aput-object v20, v18, v19

    goto :goto_9

    .line 606
    .end local v15    # "vtype":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 627
    .end local v13    # "nVals":I
    .end local v14    # "v":I
    :cond_d
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v11

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 629
    .end local v10    # "nLayers":I
    .end local v11    # "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "l":I
    :cond_e
    move/from16 v18, v9

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 630
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 631
    .local v10, "r":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 632
    .local v12, "g":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 633
    .local v14, "b":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 634
    .local v16, "a":D
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v16

    invoke-static/range {v20 .. v27}, Ljavafx/scene/paint/Color;->color(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v20

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 636
    .end local v10    # "r":D
    .end local v12    # "g":D
    .end local v14    # "b":D
    .end local v16    # "a":D
    :cond_f
    move/from16 v18, v9

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 637
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    move-result v18

    move/from16 v10, v18

    .line 638
    .local v10, "nameIndex":I
    move-object/from16 v18, v5

    move/from16 v19, v10

    aget-object v18, v18, v19

    move-object/from16 v11, v18

    .line 641
    .local v11, "ename":Ljava/lang/String;
    move/from16 v18, v3

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 654
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readShort()S

    move-result v18

    move/from16 v12, v18

    .line 655
    .local v12, "bad":I
    move/from16 v18, v12

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_10

    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bad version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 658
    .end local v12    # "bad":I
    :cond_10
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v11

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v12, v18

    .line 659
    .local v12, "value":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object/from16 v18, v12

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 661
    .end local v10    # "nameIndex":I
    .end local v11    # "ename":Ljava/lang/String;
    .end local v12    # "value":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_11
    move/from16 v18, v9

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 662
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v10, v18

    .line 663
    .local v10, "b":Ljava/lang/Boolean;
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 665
    .end local v10    # "b":Ljava/lang/Boolean;
    :cond_12
    move/from16 v18, v9

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 666
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 667
    .local v10, "val":D
    sget-object v18, Lcom/sun/javafx/css/SizeUnits;->PX:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v12, v18

    .line 668
    .local v12, "units":Lcom/sun/javafx/css/SizeUnits;
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v13, v18

    .line 670
    .local v13, "unitStr":Ljava/lang/String;
    :try_start_0
    const-class v18, Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v19, v13

    invoke-static/range {v18 .. v19}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/SizeUnits;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v12, v18

    .line 675
    .line 676
    :goto_a
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    new-instance v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-wide/from16 v22, v10

    move-object/from16 v24, v12

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/Size;-><init>(DLcom/sun/javafx/css/SizeUnits;)V

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 671
    :catch_0
    move-exception v18

    move-object/from16 v14, v18

    .line 672
    .local v14, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 675
    goto :goto_a

    .line 673
    .end local v14    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v18

    move-object/from16 v14, v18

    .line 674
    .local v14, "npe":Ljava/lang/NullPointerException;
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 678
    .end local v10    # "val":D
    .end local v12    # "units":Lcom/sun/javafx/css/SizeUnits;
    .end local v13    # "unitStr":Ljava/lang/String;
    .end local v14    # "npe":Ljava/lang/NullPointerException;
    :cond_13
    move/from16 v18, v9

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 679
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v10, v18

    .line 680
    .local v10, "str":Ljava/lang/String;
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 682
    .end local v10    # "str":Ljava/lang/String;
    :cond_14
    move/from16 v18, v9

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 683
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v10, v18

    .line 685
    .restart local v10    # "str":Ljava/lang/String;
    :try_start_1
    new-instance v18, Ljava/net/URL;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v18

    .line 686
    .local v11, "url":Ljava/net/URL;
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v11

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 687
    .end local v11    # "url":Ljava/net/URL;
    :catch_2
    move-exception v18

    move-object/from16 v11, v18

    .line 688
    .local v11, "malf":Ljava/net/MalformedURLException;
    new-instance v18, Ljava/lang/InternalError;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Excpeption in Value.readBinary: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v18

    .line 691
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "malf":Ljava/net/MalformedURLException;
    :cond_15
    move/from16 v18, v9

    if-nez v18, :cond_16

    .line 692
    new-instance v18, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    const/16 v20, 0x0

    move-object/from16 v21, v8

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v3, v18

    goto/16 :goto_1

    .line 695
    :cond_16
    new-instance v18, Ljava/lang/InternalError;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unknown type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method private static spaces()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget v2, Lcom/sun/javafx/css/ParsedValueImpl;->indent:I

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/Font;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/ParsedValueImpl;->converter:Ljavafx/css/StyleConverter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/ParsedValueImpl;->converter:Ljavafx/css/StyleConverter;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v9, v1

    move-object v10, v0

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    move v0, v9

    .line 374
    .end local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    :goto_0
    return v0

    .line 301
    .restart local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    :cond_0
    move-object v9, v1

    if-eqz v9, :cond_1

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq v9, v10, :cond_2

    .line 302
    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 305
    :cond_2
    move-object v9, v1

    check-cast v9, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v2, v9

    .line 307
    .local v2, "other":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    if-eq v9, v10, :cond_3

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 309
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v9, v9, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v9, :cond_f

    .line 311
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v9, v9, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-nez v9, :cond_4

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 313
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v9, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v9, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v9

    .line 314
    .local v3, "thisValues":[[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v9, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v9, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v9

    .line 318
    .local v4, "otherValues":[[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v3

    array-length v9, v9

    move-object v10, v4

    array-length v10, v10

    if-eq v9, v10, :cond_5

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 320
    :cond_5
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_1
    move v9, v5

    move-object v10, v3

    array-length v10, v10

    if-ge v9, v10, :cond_e

    .line 325
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    if-nez v9, :cond_7

    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    if-nez v9, :cond_7

    .line 320
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 326
    :cond_7
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    if-eqz v9, :cond_8

    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    if-nez v9, :cond_9

    :cond_8
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 328
    :cond_9
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    array-length v9, v9

    move-object v10, v4

    move v11, v5

    aget-object v10, v10, v11

    array-length v10, v10

    if-eq v9, v10, :cond_a

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 330
    :cond_a
    const/4 v9, 0x0

    move v6, v9

    .local v6, "j":I
    :goto_2
    move v9, v6

    move-object v10, v3

    move v11, v5

    aget-object v10, v10, v11

    array-length v10, v10

    if-ge v9, v10, :cond_6

    .line 332
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 333
    .local v7, "thisValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    move v10, v6

    aget-object v9, v9, v10

    move-object v8, v9

    .line 335
    .local v8, "otherValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v7

    if-eqz v9, :cond_c

    move-object v9, v7

    move-object v10, v8

    .line 336
    invoke-virtual {v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 338
    :cond_b
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 336
    :cond_c
    move-object v9, v8

    if-nez v9, :cond_b

    .line 330
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 341
    .end local v6    # "j":I
    .end local v7    # "thisValue":Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v8    # "otherValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_e
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 343
    .end local v3    # "thisValues":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v4    # "otherValues":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v5    # "i":I
    :cond_f
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v9, v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v9, :cond_16

    .line 345
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v9, v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    if-nez v9, :cond_10

    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 347
    :cond_10
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v9

    .line 348
    .local v3, "thisValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v9, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v9

    .line 352
    .local v4, "otherValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v3

    array-length v9, v9

    move-object v10, v4

    array-length v10, v10

    if-eq v9, v10, :cond_11

    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 354
    :cond_11
    const/4 v9, 0x0

    move v5, v9

    .restart local v5    # "i":I
    :goto_3
    move v9, v5

    move-object v10, v3

    array-length v10, v10

    if-ge v9, v10, :cond_15

    .line 356
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 357
    .local v6, "thisValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    move-object v7, v9

    .line 359
    .local v7, "otherValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v9, v6

    if-eqz v9, :cond_13

    move-object v9, v6

    move-object v10, v7

    .line 360
    invoke-virtual {v9, v10}, Lcom/sun/javafx/css/ParsedValueImpl;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 362
    :cond_12
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 360
    :cond_13
    move-object v9, v7

    if-nez v9, :cond_12

    .line 354
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 364
    .end local v6    # "thisValue":Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v7    # "otherValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_15
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 369
    .end local v3    # "thisValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v4    # "otherValues":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v5    # "i":I
    :cond_16
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_17

    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_17

    .line 370
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v2

    iget-object v10, v10, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    move v0, v9

    goto/16 :goto_0

    .line 373
    :cond_17
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-eqz v9, :cond_18

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    move-object v10, v2

    iget-object v10, v10, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    .line 374
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_4
    move v0, v9

    goto/16 :goto_0

    :cond_18
    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-nez v9, :cond_19

    const/4 v9, 0x1

    goto :goto_4

    :cond_19
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_2

    .line 388
    move-object v5, v0

    const/16 v6, 0x11

    iput v6, v5, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    .line 389
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v5, v5, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v5, :cond_3

    .line 390
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v5, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v5, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v1, v5

    .line 391
    .local v1, "values":[[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_0
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 392
    const/4 v5, 0x0

    move v3, v5

    .local v3, "j":I
    :goto_1
    move v5, v3

    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 393
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 394
    .local v4, "val":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v5, v0

    const/16 v6, 0x25

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    mul-int/2addr v6, v7

    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-eqz v7, :cond_0

    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_2
    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 394
    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    .line 391
    .end local v4    # "val":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .line 413
    .end local v1    # "values":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    :goto_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    return v0

    .line 397
    .restart local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v5, v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v5, :cond_8

    .line 398
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v5, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v1, v5

    .line 399
    .local v1, "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v5, 0x0

    move v2, v5

    .restart local v2    # "i":I
    :goto_4
    move v5, v2

    move-object v6, v1

    array-length v6, v6

    if-ge v5, v6, :cond_7

    .line 400
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-nez v5, :cond_5

    .line 399
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 401
    :cond_5
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 402
    .local v3, "val":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v5, v0

    const/16 v6, 0x25

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    mul-int/2addr v6, v7

    move-object v7, v3

    if-eqz v7, :cond_6

    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-eqz v7, :cond_6

    move-object v7, v3

    iget-object v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_6
    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 404
    .end local v3    # "val":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_7
    goto :goto_3

    .line 405
    .end local v1    # "values":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v2    # "i":I
    :cond_8
    move-object v5, v0

    const/16 v6, 0x25

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    mul-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_7
    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/javafx/css/ParsedValueImpl;->hash:I

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    goto :goto_7
.end method

.method public final isContainsLookups()Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/ParsedValueImpl;->containsLookups:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    return v0
.end method

.method public final isLookup()Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/ParsedValueImpl;->lookup:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 209
    .local v1, "newline":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 210
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/css/ParsedValueImpl;->lookup:Z

    if-eqz v4, :cond_0

    const-string v4, "<Value lookup=\"true\">"

    .line 211
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->indent()V

    .line 214
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 215
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    const-string v6, "value"

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/ParsedValueImpl;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :goto_1
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<converter>"

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/ParsedValueImpl;->converter:Ljavafx/css/StyleConverter;

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</converter>"

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->outdent()V

    .line 225
    move-object v3, v2

    invoke-static {}, Lcom/sun/javafx/css/ParsedValueImpl;->spaces()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</Value>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    return-object v0

    .line 210
    .restart local v0    # "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    :cond_0
    const-string v4, "<Value>"

    goto :goto_0

    .line 217
    :cond_1
    move-object v3, v0

    move-object v4, v2

    const-string v5, "null"

    const-string v6, "value"

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/ParsedValueImpl;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/ParsedValueImpl;, "Lcom/sun/javafx/css/ParsedValueImpl<TV;TT;>;"
    move-object/from16 v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object/from16 v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v11, v1

    move-object v12, v0

    iget-boolean v12, v12, Lcom/sun/javafx/css/ParsedValueImpl;->lookup:Z

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 434
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->converter:Ljavafx/css/StyleConverter;

    instance-of v11, v11, Lcom/sun/javafx/css/StyleConverterImpl;

    if-eqz v11, :cond_1

    .line 435
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 436
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->converter:Ljavafx/css/StyleConverter;

    check-cast v11, Lcom/sun/javafx/css/StyleConverterImpl;

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/css/StyleConverterImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 444
    :cond_0
    :goto_0
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, Ljavafx/css/ParsedValue;

    if-eqz v11, :cond_3

    .line 445
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 446
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v11, Ljavafx/css/ParsedValue;

    move-object v3, v11

    .line 447
    .local v3, "pv":Ljavafx/css/ParsedValue;
    move-object v11, v3

    instance-of v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v11, :cond_2

    .line 448
    move-object v11, v3

    check-cast v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 454
    .line 560
    .end local v3    # "pv":Ljavafx/css/ParsedValue;
    :goto_1
    return-void

    .line 438
    :cond_1
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 439
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->converter:Ljavafx/css/StyleConverter;

    if-eqz v11, :cond_0

    .line 440
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot writeBinary "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/css/ParsedValueImpl;->converter:Ljavafx/css/StyleConverter;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .restart local v3    # "pv":Ljavafx/css/ParsedValue;
    :cond_2
    new-instance v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/css/ParsedValue;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v4, v11

    .line 451
    .local v4, "impl":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v11, v4

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    goto :goto_1

    .line 454
    .end local v3    # "pv":Ljavafx/css/ParsedValue;
    .end local v4    # "impl":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, [Ljavafx/css/ParsedValue;

    if-eqz v11, :cond_9

    .line 455
    move-object v11, v1

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 456
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v11, [Ljavafx/css/ParsedValue;

    check-cast v11, [Ljavafx/css/ParsedValue;

    move-object v3, v11

    .line 457
    .local v3, "values":[Ljavafx/css/ParsedValue;
    move-object v11, v3

    if-eqz v11, :cond_4

    .line 458
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 462
    :goto_2
    move-object v11, v3

    if-eqz v11, :cond_5

    move-object v11, v3

    array-length v11, v11

    :goto_3
    move v4, v11

    .line 463
    .local v4, "nValues":I
    move-object v11, v1

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 464
    const/4 v11, 0x0

    move v5, v11

    .local v5, "v":I
    :goto_4
    move v11, v5

    move v12, v4

    if-ge v11, v12, :cond_8

    .line 465
    move-object v11, v3

    move v12, v5

    aget-object v11, v11, v12

    if-eqz v11, :cond_7

    .line 466
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 467
    move-object v11, v3

    move v12, v5

    aget-object v11, v11, v12

    move-object v6, v11

    .line 468
    .local v6, "pv":Ljavafx/css/ParsedValue;
    move-object v11, v6

    instance-of v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v11, :cond_6

    .line 469
    move-object v11, v6

    check-cast v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 474
    .line 464
    .end local v6    # "pv":Ljavafx/css/ParsedValue;
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 460
    .end local v4    # "nValues":I
    .end local v5    # "v":I
    :cond_4
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_2

    .line 462
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 471
    .restart local v4    # "nValues":I
    .restart local v5    # "v":I
    .restart local v6    # "pv":Ljavafx/css/ParsedValue;
    :cond_6
    new-instance v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v6

    invoke-virtual {v13}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v14}, Ljavafx/css/ParsedValue;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v7, v11

    .line 472
    .local v7, "impl":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v11, v7

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    goto :goto_5

    .line 475
    .end local v6    # "pv":Ljavafx/css/ParsedValue;
    .end local v7    # "impl":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_7
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_5

    .line 479
    :cond_8
    goto/16 :goto_1

    .end local v3    # "values":[Ljavafx/css/ParsedValue;
    .end local v4    # "nValues":I
    .end local v5    # "v":I
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, [[Ljavafx/css/ParsedValue;

    if-eqz v11, :cond_12

    .line 480
    move-object v11, v1

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 481
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v11, [[Ljavafx/css/ParsedValue;

    check-cast v11, [[Ljavafx/css/ParsedValue;

    move-object v3, v11

    .line 482
    .local v3, "layers":[[Ljavafx/css/ParsedValue;
    move-object v11, v3

    if-eqz v11, :cond_a

    .line 483
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 487
    :goto_6
    move-object v11, v3

    if-eqz v11, :cond_b

    move-object v11, v3

    array-length v11, v11

    :goto_7
    move v4, v11

    .line 488
    .local v4, "nLayers":I
    move-object v11, v1

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 489
    const/4 v11, 0x0

    move v5, v11

    .local v5, "l":I
    :goto_8
    move v11, v5

    move v12, v4

    if-ge v11, v12, :cond_11

    .line 490
    move-object v11, v3

    move v12, v5

    aget-object v11, v11, v12

    move-object v6, v11

    .line 491
    .local v6, "values":[Ljavafx/css/ParsedValue;
    move-object v11, v6

    if-eqz v11, :cond_c

    .line 492
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 496
    :goto_9
    move-object v11, v6

    if-eqz v11, :cond_d

    move-object v11, v6

    array-length v11, v11

    :goto_a
    move v7, v11

    .line 497
    .local v7, "nValues":I
    move-object v11, v1

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 498
    const/4 v11, 0x0

    move v8, v11

    .local v8, "v":I
    :goto_b
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_10

    .line 499
    move-object v11, v6

    move v12, v8

    aget-object v11, v11, v12

    if-eqz v11, :cond_f

    .line 500
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 501
    move-object v11, v6

    move v12, v8

    aget-object v11, v11, v12

    move-object v9, v11

    .line 502
    .local v9, "pv":Ljavafx/css/ParsedValue;
    move-object v11, v9

    instance-of v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v11, :cond_e

    .line 503
    move-object v11, v9

    check-cast v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 508
    .line 498
    .end local v9    # "pv":Ljavafx/css/ParsedValue;
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 485
    .end local v4    # "nLayers":I
    .end local v5    # "l":I
    .end local v6    # "values":[Ljavafx/css/ParsedValue;
    .end local v7    # "nValues":I
    .end local v8    # "v":I
    :cond_a
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_6

    .line 487
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 494
    .restart local v4    # "nLayers":I
    .restart local v5    # "l":I
    .restart local v6    # "values":[Ljavafx/css/ParsedValue;
    :cond_c
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_9

    .line 496
    :cond_d
    const/4 v11, 0x0

    goto :goto_a

    .line 505
    .restart local v7    # "nValues":I
    .restart local v8    # "v":I
    .restart local v9    # "pv":Ljavafx/css/ParsedValue;
    :cond_e
    new-instance v11, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v9

    invoke-virtual {v13}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/css/ParsedValue;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    move-object v10, v11

    .line 506
    .local v10, "impl":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v11, v10

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/css/ParsedValueImpl;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    goto :goto_c

    .line 509
    .end local v9    # "pv":Ljavafx/css/ParsedValue;
    .end local v10    # "impl":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_f
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_c

    .line 489
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 514
    .end local v6    # "values":[Ljavafx/css/ParsedValue;
    .end local v7    # "nValues":I
    .end local v8    # "v":I
    :cond_11
    goto/16 :goto_1

    .end local v3    # "layers":[[Ljavafx/css/ParsedValue;
    .end local v4    # "nLayers":I
    .end local v5    # "l":I
    :cond_12
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, Ljavafx/scene/paint/Color;

    if-eqz v11, :cond_13

    .line 515
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v11, Ljavafx/scene/paint/Color;

    move-object v3, v11

    .line 516
    .local v3, "c":Ljavafx/scene/paint/Color;
    move-object v11, v1

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 517
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 518
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 519
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 520
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 522
    goto/16 :goto_1

    .end local v3    # "c":Ljavafx/scene/paint/Color;
    :cond_13
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/Enum;

    if-eqz v11, :cond_14

    .line 523
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Enum;

    move-object v3, v11

    .line 524
    .local v3, "e":Ljava/lang/Enum;
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v11

    move v4, v11

    .line 525
    .local v4, "nameIndex":I
    move-object v11, v1

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 526
    move-object v11, v1

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 528
    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/Enum;
    .end local v4    # "nameIndex":I
    :cond_14
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/Boolean;

    if-eqz v11, :cond_15

    .line 529
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    move-object v3, v11

    .line 530
    .local v3, "b":Ljava/lang/Boolean;
    move-object v11, v1

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 531
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 533
    goto/16 :goto_1

    .end local v3    # "b":Ljava/lang/Boolean;
    :cond_15
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, Lcom/sun/javafx/css/Size;

    if-eqz v11, :cond_16

    .line 534
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v11, Lcom/sun/javafx/css/Size;

    move-object v3, v11

    .line 535
    .local v3, "size":Lcom/sun/javafx/css/Size;
    move-object v11, v1

    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 537
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v11

    move-wide v4, v11

    .line 538
    .local v4, "sz":D
    move-wide v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    move-wide v6, v11

    .line 539
    .local v6, "val":J
    move-object v11, v1

    move-wide v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 541
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/css/SizeUnits;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v11

    move v8, v11

    .line 542
    .local v8, "index":I
    move-object v11, v1

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 544
    goto/16 :goto_1

    .end local v3    # "size":Lcom/sun/javafx/css/Size;
    .end local v4    # "sz":D
    .end local v6    # "val":J
    .end local v8    # "index":I
    :cond_16
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_17

    .line 545
    move-object v11, v1

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 546
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v11

    move v3, v11

    .line 547
    .local v3, "index":I
    move-object v11, v1

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 549
    goto/16 :goto_1

    .end local v3    # "index":I
    :cond_17
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    instance-of v11, v11, Ljava/net/URL;

    if-eqz v11, :cond_18

    .line 550
    move-object v11, v1

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 551
    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v11

    move v3, v11

    .line 552
    .restart local v3    # "index":I
    move-object v11, v1

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 554
    goto/16 :goto_1

    .end local v3    # "index":I
    :cond_18
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/ParsedValueImpl;->value:Ljava/lang/Object;

    if-nez v11, :cond_19

    .line 555
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_1

    .line 558
    :cond_19
    new-instance v11, Ljava/lang/InternalError;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot writeBinary "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v11
.end method
