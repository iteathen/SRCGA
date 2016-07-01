.class public Lcom/sun/javafx/scene/control/behavior/TextBinding;
.super Ljava/lang/Object;
.source "TextBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    }
.end annotation


# instance fields
.field private MNEMONIC_SYMBOL:Ljava/lang/String;

.field private extendedMnemonicText:Ljava/lang/String;

.field private mnemonic:Ljava/lang/String;

.field private mnemonicIndex:I

.field private mnemonicKeyCombination:Ljavafx/scene/input/KeyCombination;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v2, v0

    const-string v3, "_"

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding;->MNEMONIC_SYMBOL:Ljava/lang/String;

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding;->text:Ljava/lang/String;

    .line 86
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicKeyCombination:Ljavafx/scene/input/KeyCombination;

    .line 120
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicIndex:I

    .line 138
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding;->extendedMnemonicText:Ljava/lang/String;

    .line 156
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->parseAndSplit(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private parseAndSplit(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 164
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->text:Ljava/lang/String;

    .line 165
    .line 207
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 175
    .local v2, "temp":Ljava/lang/StringBuffer;
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TextBinding;->MNEMONIC_SYMBOL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 176
    .local v3, "index":I
    :goto_1
    move v5, v3

    if-ltz v5, :cond_6

    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_6

    .line 178
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->MNEMONIC_SYMBOL:Ljava/lang/String;

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    move-object v5, v2

    move v6, v3

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 204
    :cond_2
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TextBinding;->MNEMONIC_SYMBOL:Ljava/lang/String;

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 180
    :cond_3
    move-object v5, v2

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_4

    move v5, v3

    move-object v6, v2

    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    if-ne v5, v6, :cond_7

    .line 182
    :cond_4
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    .line 183
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 184
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicIndex:I

    .line 186
    :cond_5
    move-object v5, v2

    move v6, v3

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 187
    .line 206
    :cond_6
    :goto_2
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->text:Ljava/lang/String;

    .line 207
    goto/16 :goto_0

    .line 189
    :cond_7
    move-object v5, v2

    const-string v6, ")"

    move v7, v3

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    .line 190
    .local v4, "endIndex":I
    move v5, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    .line 191
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    .line 192
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 193
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicIndex:I

    .line 195
    :cond_8
    move-object v5, v2

    move v6, v3

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 196
    goto :goto_2

    .line 197
    :cond_9
    move v5, v4

    move v6, v3

    const/4 v7, 0x3

    add-int/lit8 v6, v6, 0x3

    if-ne v5, v6, :cond_2

    .line 198
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v3

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    .line 199
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/behavior/TextBinding;->extendedMnemonicText:Ljava/lang/String;

    .line 200
    move-object v5, v2

    move v6, v3

    move v7, v4

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 201
    goto :goto_2
.end method


# virtual methods
.method public getExtendedMnemonicText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->extendedMnemonicText:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    return-object v0
.end method

.method public getMnemonic()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    return-object v0
.end method

.method public getMnemonicIndex()I
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    return v0
.end method

.method public getMnemonicKeyCombination()Ljavafx/scene/input/KeyCombination;
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicKeyCombination:Ljavafx/scene/input/KeyCombination;

    if-nez v1, :cond_0

    .line 110
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonic:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicKeyCombination:Ljavafx/scene/input/KeyCombination;

    .line 112
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->mnemonicKeyCombination:Ljavafx/scene/input/KeyCombination;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    return-object v0
.end method
