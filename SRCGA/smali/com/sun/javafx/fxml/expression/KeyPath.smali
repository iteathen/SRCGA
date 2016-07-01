.class public Lcom/sun/javafx/fxml/expression/KeyPath;
.super Ljava/util/AbstractList;
.source "KeyPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v1, p1

    .local v1, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractList;-><init>()V

    .line 41
    move-object v2, v1

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 45
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/expression/KeyPath;->elements:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method protected static parse(Ljava/io/PushbackReader;)Lcom/sun/javafx/fxml/expression/KeyPath;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "reader":Ljava/io/PushbackReader;
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 120
    .local v1, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    .line 122
    .local v2, "c":I
    :goto_0
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_11

    move v7, v2

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v2

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_11

    .line 123
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v7

    .line 125
    .local v3, "keyBuilder":Ljava/lang/StringBuilder;
    move v7, v2

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    move v4, v7

    .line 127
    .local v4, "bracketed":Z
    move v7, v4

    if-eqz v7, :cond_e

    .line 128
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    .line 129
    move v7, v2

    const/16 v8, 0x22

    if-eq v7, v8, :cond_1

    move v7, v2

    const/16 v8, 0x27

    if-ne v7, v8, :cond_3

    :cond_1
    const/4 v7, 0x1

    :goto_2
    move v5, v7

    .line 132
    .local v5, "quoted":Z
    move v7, v5

    if-eqz v7, :cond_4

    .line 133
    move v7, v2

    int-to-char v7, v7

    move v6, v7

    .line 134
    .local v6, "quote":C
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    .line 139
    :goto_3
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    move v7, v4

    if-eqz v7, :cond_a

    .line 141
    move v7, v2

    invoke-static {v7}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 142
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Illegal identifier character."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    .end local v4    # "bracketed":Z
    .end local v5    # "quoted":Z
    .end local v6    # "quote":C
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 129
    .restart local v4    # "bracketed":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 136
    .restart local v5    # "quoted":Z
    :cond_4
    const/4 v7, 0x0

    move v6, v7

    .restart local v6    # "quote":C
    goto :goto_3

    .line 145
    :cond_5
    move v7, v5

    if-nez v7, :cond_6

    move v7, v2

    .line 146
    invoke-static {v7}, Ljava/lang/Character;->isDigit(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 147
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Illegal character in index value."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    :cond_6
    move-object v7, v3

    move v8, v2

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    .line 153
    move v7, v5

    if-eqz v7, :cond_7

    .line 154
    move v7, v2

    move v8, v6

    if-eq v7, v8, :cond_8

    const/4 v7, 0x1

    :goto_4
    move v5, v7

    .line 156
    move v7, v5

    if-nez v7, :cond_7

    .line 157
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    .line 161
    :cond_7
    move v7, v2

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_9

    const/4 v7, 0x1

    :goto_5
    move v4, v7

    goto :goto_3

    .line 154
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 161
    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 164
    :cond_a
    move v7, v5

    if-eqz v7, :cond_b

    .line 165
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Unterminated quoted identifier."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_b
    move v7, v4

    if-eqz v7, :cond_c

    .line 169
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Unterminated bracketed identifier."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 172
    :cond_c
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    .line 180
    .end local v5    # "quoted":Z
    .end local v6    # "quote":C
    :cond_d
    move v7, v2

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_f

    .line 181
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    .line 183
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_f

    .line 184
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Illegal terminator character."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 174
    :cond_e
    :goto_6
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    move v7, v2

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_d

    move v7, v2

    const/16 v8, 0x5b

    if-eq v7, v8, :cond_d

    move v7, v2

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 175
    move-object v7, v3

    move v8, v2

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 176
    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/PushbackReader;->read()I

    move-result v7

    move v2, v7

    goto :goto_6

    .line 188
    :cond_f
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_10

    .line 189
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Missing identifier."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 192
    :cond_10
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 193
    goto/16 :goto_0

    .line 195
    .end local v3    # "keyBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "bracketed":Z
    :cond_11
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_12

    .line 196
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Invalid path."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 200
    :cond_12
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_13

    .line 201
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/io/PushbackReader;->unread(I)V

    .line 204
    :cond_13
    new-instance v7, Lcom/sun/javafx/fxml/expression/KeyPath;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/fxml/expression/KeyPath;-><init>(Ljava/util/ArrayList;)V

    move-object v0, v7

    .end local v0    # "reader":Ljava/io/PushbackReader;
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/KeyPath;
    .locals 10

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/PushbackReader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/StringReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 96
    .local v2, "reader":Ljava/io/PushbackReader;
    move-object v4, v2

    :try_start_1
    invoke-static {v4}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/io/PushbackReader;)Lcom/sun/javafx/fxml/expression/KeyPath;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v1, v4

    .line 98
    .local v1, "keyPath":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v4, v2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/PushbackReader;->close()V

    .line 99
    .line 102
    .line 104
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "value":Ljava/lang/String;
    return-object v0

    .line 98
    .end local v1    # "keyPath":Lcom/sun/javafx/fxml/expression/KeyPath;
    .restart local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/PushbackReader;->close()V

    move-object v4, v3

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .end local v2    # "reader":Ljava/io/PushbackReader;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 101
    .local v2, "exception":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/KeyPath;->get(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/KeyPath;->elements:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/expression/KeyPath;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 62
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/expression/KeyPath;->elements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .local v3, "n":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 63
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/expression/KeyPath;->elements:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 65
    .local v4, "element":Ljava/lang/String;
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    move-object v5, v1

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 67
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    move-object v5, v1

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    move v5, v2

    if-lez v5, :cond_1

    .line 71
    move-object v5, v1

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 74
    :cond_1
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_1

    .line 78
    .end local v4    # "element":Ljava/lang/String;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/KeyPath;
    return-object v0
.end method
