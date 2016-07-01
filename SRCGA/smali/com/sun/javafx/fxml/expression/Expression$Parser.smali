.class Lcom/sun/javafx/fxml/expression/Expression$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/expression/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;,
        Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    }
.end annotation


# static fields
.field private static final PUSHBACK_BUFFER_SIZE:I = 0x6


# instance fields
.field private c:I

.field private pushbackBuffer:[C


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 75
    move-object v1, v0

    const/4 v2, 0x6

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/sun/javafx/fxml/expression/Expression$Parser;->pushbackBuffer:[C

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/fxml/expression/Expression$1;)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/fxml/expression/Expression$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/expression/Expression$Parser;-><init>()V

    return-void
.end method

.method private readKeyword(Ljava/io/PushbackReader;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    move-object v1, p1

    .local v1, "reader":Ljava/io/PushbackReader;
    move-object v2, p2

    .local v2, "keyword":Ljava/lang/String;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    .line 474
    .local v3, "n":I
    const/4 v6, 0x0

    move v4, v6

    .line 476
    .local v4, "i":I
    :goto_0
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 477
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/fxml/expression/Expression$Parser;->pushbackBuffer:[C

    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    int-to-char v8, v8

    aput-char v8, v6, v7

    .line 478
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    if-eq v6, v7, :cond_1

    .line 479
    .line 487
    :cond_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 488
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/fxml/expression/Expression$Parser;->pushbackBuffer:[C

    const/4 v8, 0x0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/PushbackReader;->unread([CII)V

    .line 489
    const/4 v6, 0x0

    move v5, v6

    .line 494
    .local v5, "result":Z
    :goto_1
    move v6, v5

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    return v0

    .line 482
    .end local v5    # "result":Z
    .restart local v0    # "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    :cond_1
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    iput v7, v6, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 491
    :cond_2
    const/4 v6, 0x1

    move v5, v6

    .restart local v5    # "result":Z
    goto :goto_1
.end method

.method private tokenize(Ljava/io/PushbackReader;)Ljava/util/LinkedList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PushbackReader;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    move-object/from16 v1, p1

    .local v1, "reader":Ljava/io/PushbackReader;
    new-instance v10, Ljava/util/LinkedList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v10

    .line 197
    .local v2, "tokens":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;>;"
    new-instance v10, Ljava/util/LinkedList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v10

    .line 199
    .local v3, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;>;"
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 200
    const/4 v10, 0x1

    move v4, v10

    .line 202
    .local v4, "unary":Z
    :cond_0
    :goto_0
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_26

    .line 204
    :goto_1
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 205
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_1

    .line 208
    :cond_1
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 211
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x6e

    if-ne v10, v11, :cond_4

    .line 212
    move-object v10, v0

    move-object v11, v1

    const-string v12, "null"

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/fxml/expression/Expression$Parser;->readKeyword(Ljava/io/PushbackReader;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 213
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->LITERAL:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 421
    .local v5, "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_2
    :goto_2
    sget-object v10, Lcom/sun/javafx/fxml/expression/Expression$1;->$SwitchMap$com$sun$javafx$fxml$expression$Expression$Parser$TokenType:[I

    move-object v11, v5

    iget-object v11, v11, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    invoke-virtual {v11}, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 457
    :pswitch_0
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v10

    .line 215
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_3
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->VARIABLE:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    move-object v13, v1

    invoke-static {v13}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/io/PushbackReader;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 216
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_2

    .line 218
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_4
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x22

    if-eq v10, v11, :cond_5

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x27

    if-ne v10, v11, :cond_11

    .line 219
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v10

    .line 222
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    move v7, v10

    .line 225
    .local v7, "t":I
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 227
    :goto_3
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_f

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    move v11, v7

    if-eq v10, v11, :cond_f

    .line 228
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    invoke-static {v10}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 229
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_6

    .line 230
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 232
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x62

    if-ne v10, v11, :cond_8

    .line 233
    move-object v10, v0

    const/16 v11, 0x8

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 262
    :cond_6
    :goto_4
    move-object v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 265
    :cond_7
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_3

    .line 234
    :cond_8
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x66

    if-ne v10, v11, :cond_9

    .line 235
    move-object v10, v0

    const/16 v11, 0xc

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_4

    .line 236
    :cond_9
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x6e

    if-ne v10, v11, :cond_a

    .line 237
    move-object v10, v0

    const/16 v11, 0xa

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_4

    .line 238
    :cond_a
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x72

    if-ne v10, v11, :cond_b

    .line 239
    move-object v10, v0

    const/16 v11, 0xd

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_4

    .line 240
    :cond_b
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x74

    if-ne v10, v11, :cond_c

    .line 241
    move-object v10, v0

    const/16 v11, 0x9

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_4

    .line 242
    :cond_c
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x75

    if-ne v10, v11, :cond_e

    .line 243
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v10

    .line 244
    .local v8, "unicodeValueBuilder":Ljava/lang/StringBuilder;
    :goto_5
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x4

    if-ge v10, v11, :cond_d

    .line 245
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 246
    move-object v10, v8

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    goto :goto_5

    .line 249
    :cond_d
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 250
    .local v9, "unicodeValue":Ljava/lang/String;
    move-object v10, v0

    move-object v11, v9

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    int-to-char v11, v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 251
    goto/16 :goto_4

    .line 252
    .end local v8    # "unicodeValueBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "unicodeValue":Ljava/lang/String;
    :cond_e
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x5c

    if-eq v10, v11, :cond_6

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x2f

    if-eq v10, v11, :cond_6

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x22

    if-eq v10, v11, :cond_6

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x27

    if-eq v10, v11, :cond_6

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    move v11, v7

    if-eq v10, v11, :cond_6

    .line 257
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unsupported escape sequence."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 268
    :cond_f
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    move v11, v7

    if-eq v10, v11, :cond_10

    .line 269
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unterminated string."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 273
    :cond_10
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 275
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->LITERAL:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 276
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_2

    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "t":I
    :cond_11
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    invoke-static {v10}, Ljava/lang/Character;->isDigit(I)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 277
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v10

    .line 278
    .local v6, "numberBuilder":Ljava/lang/StringBuilder;
    const/4 v10, 0x1

    move v7, v10

    .line 280
    .local v7, "integer":Z
    :goto_6
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_14

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    invoke-static {v10}, Ljava/lang/Character;->isDigit(I)Z

    move-result v10

    if-nez v10, :cond_12

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_12

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x65

    if-eq v10, v11, :cond_12

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x45

    if-ne v10, v11, :cond_14

    .line 282
    :cond_12
    move-object v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 283
    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v12, 0x2e

    if-eq v11, v12, :cond_13

    const/4 v11, 0x1

    :goto_7
    and-int/2addr v10, v11

    move v7, v10

    .line 284
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto :goto_6

    .line 283
    :cond_13
    const/4 v11, 0x0

    goto :goto_7

    .line 288
    :cond_14
    move v10, v7

    if-eqz v10, :cond_15

    .line 289
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object v8, v10

    .line 294
    .local v8, "value":Ljava/lang/Number;
    :goto_8
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->LITERAL:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 295
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_2

    .line 291
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    .end local v8    # "value":Ljava/lang/Number;
    :cond_15
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    move-object v8, v10

    .restart local v8    # "value":Ljava/lang/Number;
    goto :goto_8

    .line 295
    .end local v6    # "numberBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "integer":Z
    .end local v8    # "value":Ljava/lang/Number;
    :cond_16
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x74

    if-ne v10, v11, :cond_18

    .line 296
    move-object v10, v0

    move-object v11, v1

    const-string v12, "true"

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/fxml/expression/Expression$Parser;->readKeyword(Ljava/io/PushbackReader;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 297
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->LITERAL:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_2

    .line 299
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_17
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->VARIABLE:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    move-object v13, v1

    invoke-static {v13}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/io/PushbackReader;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 300
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto/16 :goto_2

    .line 302
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_18
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x66

    if-ne v10, v11, :cond_1a

    .line 303
    move-object v10, v0

    move-object v11, v1

    const-string v12, "false"

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/fxml/expression/Expression$Parser;->readKeyword(Ljava/io/PushbackReader;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 304
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->LITERAL:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_2

    .line 306
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_19
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->VARIABLE:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    move-object v13, v1

    invoke-static {v13}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/io/PushbackReader;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 307
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto/16 :goto_2

    .line 309
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_1a
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 310
    move-object v10, v1

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    invoke-virtual {v10, v11}, Ljava/io/PushbackReader;->unread(I)V

    .line 316
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->VARIABLE:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    move-object v13, v1

    invoke-static {v13}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/io/PushbackReader;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 317
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto/16 :goto_2

    .line 319
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_1b
    const/4 v10, 0x1

    move v6, v10

    .line 320
    .local v6, "readNext":Z
    move v10, v4

    if-eqz v10, :cond_1c

    .line 321
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    sparse-switch v10, :sswitch_data_0

    .line 332
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unexpected character in expression."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 323
    :sswitch_0
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->UNARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->NEGATE:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 415
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :goto_9
    move v10, v6

    if-eqz v10, :cond_2

    .line 416
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    goto/16 :goto_2

    .line 326
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_1
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->UNARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->NOT:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 327
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto :goto_9

    .line 329
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_2
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BEGIN_GROUP:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 330
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto :goto_9

    .line 335
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_1c
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    sparse-switch v10, :sswitch_data_1

    .line 411
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unexpected character in expression."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 337
    :sswitch_3
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->ADD:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 338
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto :goto_9

    .line 340
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_4
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->SUBTRACT:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 341
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto :goto_9

    .line 343
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_5
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->MULTIPLY:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 344
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto :goto_9

    .line 346
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_6
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->DIVIDE:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 347
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto :goto_9

    .line 349
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_7
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->MODULO:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 350
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto :goto_9

    .line 352
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_8
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 353
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_1d

    .line 354
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 356
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_1d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unexpected character in expression."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 360
    :sswitch_9
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 362
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_1e

    .line 363
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->NOT_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 365
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_1e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unexpected character in expression."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 369
    :sswitch_a
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 371
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_1f

    .line 372
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->GREATER_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 374
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_1f
    const/4 v10, 0x0

    move v6, v10

    .line 375
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->GREATER_THAN:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 377
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 379
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_b
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 381
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_20

    .line 382
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->LESS_THAN_OR_EQUAL_TO:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 384
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_20
    const/4 v10, 0x0

    move v6, v10

    .line 385
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->LESS_THAN:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 387
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 389
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :sswitch_c
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 391
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x26

    if-ne v10, v11, :cond_21

    .line 392
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->AND:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 394
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_21
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unexpected character in expression."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 398
    :sswitch_d
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/PushbackReader;->read()I

    move-result v11

    iput v11, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    .line 400
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser;->c:I

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_22

    .line 401
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BINARY_OPERATOR:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v13, Lcom/sun/javafx/fxml/expression/Operator;->OR:Lcom/sun/javafx/fxml/expression/Operator;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 403
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_22
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Unexpected character in expression."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 408
    :sswitch_e
    new-instance v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->END_GROUP:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;-><init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V

    move-object v5, v10

    .line 409
    .restart local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    goto/16 :goto_9

    .line 424
    .end local v6    # "readNext":Z
    :pswitch_1
    move-object v10, v2

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 425
    .line 461
    :goto_a
    move-object v10, v5

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v11, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->LITERAL:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    if-eq v10, v11, :cond_25

    move-object v10, v5

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v11, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->VARIABLE:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    if-eq v10, v11, :cond_25

    move-object v10, v5

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v11, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->END_GROUP:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    if-eq v10, v11, :cond_25

    const/4 v10, 0x1

    :goto_b
    move v4, v10

    .line 462
    goto/16 :goto_0

    .line 430
    :pswitch_2
    move-object v10, v5

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    check-cast v10, Lcom/sun/javafx/fxml/expression/Operator;

    invoke-virtual {v10}, Lcom/sun/javafx/fxml/expression/Operator;->getPriority()I

    move-result v10

    move v6, v10

    .line 432
    .local v6, "priority":I
    :goto_c
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_23

    move-object v10, v3

    .line 433
    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v11, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BEGIN_GROUP:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    if-eq v10, v11, :cond_23

    move-object v10, v3

    .line 434
    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    check-cast v10, Lcom/sun/javafx/fxml/expression/Operator;

    invoke-virtual {v10}, Lcom/sun/javafx/fxml/expression/Operator;->getPriority()I

    move-result v10

    move v11, v6

    if-lt v10, v11, :cond_23

    move-object v10, v3

    .line 435
    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    check-cast v10, Lcom/sun/javafx/fxml/expression/Operator;

    invoke-virtual {v10}, Lcom/sun/javafx/fxml/expression/Operator;->getPriority()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_23

    .line 436
    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_c

    .line 439
    :cond_23
    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 440
    goto :goto_a

    .line 444
    .end local v6    # "priority":I
    :pswitch_3
    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 445
    goto :goto_a

    .line 449
    :pswitch_4
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v6, v10

    .local v6, "t":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :goto_d
    move-object v10, v6

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    sget-object v11, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->BEGIN_GROUP:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    if-eq v10, v11, :cond_24

    .line 450
    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 449
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v6, v10

    goto :goto_d

    .line 453
    :cond_24
    goto/16 :goto_a

    .line 461
    .end local v6    # "t":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_25
    const/4 v10, 0x0

    goto :goto_b

    .line 465
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    :cond_26
    :goto_e
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_27

    .line 466
    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v11}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_e

    .line 469
    :cond_27
    move-object v10, v2

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    return-object v0

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x28 -> :sswitch_2
        0x2d -> :sswitch_0
    .end sparse-switch

    .line 335
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_9
        0x25 -> :sswitch_7
        0x26 -> :sswitch_c
        0x29 -> :sswitch_e
        0x2a -> :sswitch_5
        0x2b -> :sswitch_3
        0x2d -> :sswitch_4
        0x2f -> :sswitch_6
        0x3c -> :sswitch_b
        0x3d -> :sswitch_8
        0x3e -> :sswitch_a
        0x7c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Lcom/sun/javafx/fxml/expression/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    move-object/from16 v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v10, v0

    new-instance v11, Ljava/io/PushbackReader;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v1

    const/4 v14, 0x6

    invoke-direct {v12, v13, v14}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression$Parser;->tokenize(Ljava/io/PushbackReader;)Ljava/util/LinkedList;

    move-result-object v10

    move-object v2, v10

    .line 82
    .local v2, "tokens":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;>;"
    new-instance v10, Ljava/util/LinkedList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v10

    .line 84
    .local v3, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sun/javafx/fxml/expression/Expression;>;"
    move-object v10, v2

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v10

    :goto_0
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;

    move-object v5, v10

    .line 86
    .local v5, "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    sget-object v10, Lcom/sun/javafx/fxml/expression/Expression$1;->$SwitchMap$com$sun$javafx$fxml$expression$Expression$Parser$TokenType:[I

    move-object v11, v5

    iget-object v11, v11, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    invoke-virtual {v11}, Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 180
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v10

    .line 88
    :pswitch_0
    new-instance v10, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    iget-object v12, v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    invoke-direct {v11, v12}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v6, v10

    .line 184
    .local v6, "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :goto_1
    move-object v10, v3

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 185
    goto :goto_0

    .line 93
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_1
    new-instance v10, Lcom/sun/javafx/fxml/expression/VariableExpression;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    iget-object v12, v12, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    check-cast v12, Lcom/sun/javafx/fxml/expression/KeyPath;

    invoke-direct {v11, v12}, Lcom/sun/javafx/fxml/expression/VariableExpression;-><init>(Lcom/sun/javafx/fxml/expression/KeyPath;)V

    move-object v6, v10

    .line 94
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto :goto_1

    .line 104
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_2
    const/4 v10, 0x0

    move-object v6, v10

    .line 105
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto :goto_1

    .line 109
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_3
    move-object v10, v5

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    check-cast v10, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v7, v10

    .line 110
    .local v7, "operator":Lcom/sun/javafx/fxml/expression/Operator;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression;

    move-object v8, v10

    .line 112
    .local v8, "operand":Lcom/sun/javafx/fxml/expression/Expression;
    sget-object v10, Lcom/sun/javafx/fxml/expression/Expression$1;->$SwitchMap$com$sun$javafx$fxml$expression$Operator:[I

    move-object v11, v7

    invoke-virtual {v11}, Lcom/sun/javafx/fxml/expression/Operator;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 120
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v10

    .line 114
    :pswitch_4
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/fxml/expression/Expression;->negate(Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/UnaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 115
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto :goto_1

    .line 117
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_5
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/fxml/expression/Expression;->not(Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/UnaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 118
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto :goto_1

    .line 128
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    .end local v7    # "operator":Lcom/sun/javafx/fxml/expression/Operator;
    .end local v8    # "operand":Lcom/sun/javafx/fxml/expression/Expression;
    :pswitch_6
    move-object v10, v5

    iget-object v10, v10, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    check-cast v10, Lcom/sun/javafx/fxml/expression/Operator;

    move-object v7, v10

    .line 129
    .restart local v7    # "operator":Lcom/sun/javafx/fxml/expression/Operator;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression;

    move-object v8, v10

    .line 130
    .local v8, "right":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression;

    move-object v9, v10

    .line 132
    .local v9, "left":Lcom/sun/javafx/fxml/expression/Expression;
    sget-object v10, Lcom/sun/javafx/fxml/expression/Expression$1;->$SwitchMap$com$sun$javafx$fxml$expression$Operator:[I

    move-object v11, v7

    invoke-virtual {v11}, Lcom/sun/javafx/fxml/expression/Operator;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_2

    .line 173
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v10

    .line 134
    :pswitch_7
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->add(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 135
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto :goto_1

    .line 137
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_8
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->subtract(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 138
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 140
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_9
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->multiply(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 141
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 143
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_a
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->divide(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 144
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 146
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_b
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->modulo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 147
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 149
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_c
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 150
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 152
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_d
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 153
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 155
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_e
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->lessThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 156
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 158
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_f
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->lessThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 159
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 161
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_10
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->equalTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 162
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 164
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_11
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->notEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 165
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 167
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_12
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->and(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 168
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 170
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    :pswitch_13
    move-object v10, v9

    move-object v11, v8

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/expression/Expression;->or(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v10

    move-object v6, v10

    .line 171
    .restart local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    goto/16 :goto_1

    .line 187
    .end local v5    # "token":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    .end local v6    # "expression":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<*>;"
    .end local v7    # "operator":Lcom/sun/javafx/fxml/expression/Operator;
    .end local v8    # "right":Lcom/sun/javafx/fxml/expression/Expression;
    .end local v9    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    :cond_0
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    .line 188
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "Invalid expression."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 191
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/fxml/expression/Expression;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    return-object v0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 132
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
