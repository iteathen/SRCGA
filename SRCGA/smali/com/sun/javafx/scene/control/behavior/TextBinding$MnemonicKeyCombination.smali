.class public Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
.super Ljavafx/scene/input/KeyCombination;
.source "TextBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/behavior/TextBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MnemonicKeyCombination"
.end annotation


# instance fields
.field private character:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    move-object v1, p1

    .local v1, "character":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/input/KeyCombination$Modifier;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljavafx/scene/input/KeyCombination;->META_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    :goto_0
    aput-object v6, v4, v5

    invoke-direct {v2, v3}, Ljavafx/scene/input/KeyCombination;-><init>([Ljavafx/scene/input/KeyCombination$Modifier;)V

    .line 214
    move-object v2, v0

    const-string v3, ""

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->character:Ljava/lang/String;

    .line 226
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->character:Ljava/lang/String;

    .line 227
    return-void

    .line 223
    :cond_0
    sget-object v6, Ljavafx/scene/input/KeyCombination;->ALT_DOWN:Ljavafx/scene/input/KeyCombination$Modifier;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 291
    const/4 v2, 0x1

    move v0, v2

    .line 299
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    :goto_0
    return v0

    .line 294
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;

    if-nez v2, :cond_1

    .line 295
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 298
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->character:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    .line 299
    invoke-super {v2, v3}, Ljavafx/scene/input/KeyCombination;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final getCharacter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->character:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 273
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/input/KeyCombination;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 275
    move-object v2, v1

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    :cond_0
    move-object v2, v1

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->character:Ljava/lang/String;

    const-string v4, "\'"

    const-string v5, "\\\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    const/16 v1, 0x17

    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/input/KeyCombination;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->character:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    return v0
.end method

.method public match(Ljavafx/scene/input/KeyEvent;)Z
    .locals 5

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 247
    .local v2, "text":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 248
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    .line 249
    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;->getCharacter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    .line 250
    invoke-super {v3, v4}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/TextBinding$MnemonicKeyCombination;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
