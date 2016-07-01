.class public final Ljavafx/scene/input/KeyCharacterCombination;
.super Ljavafx/scene/input/KeyCombination;
.source "KeyCharacterCombination.java"


# instance fields
.field private character:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "character"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shift"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "control"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "alt"
        .end annotation
    .end param
    .param p5    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "meta"
        .end annotation
    .end param
    .param p6    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shortcut"
        .end annotation
    .end param

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    move-object v1, p1

    .local v1, "character":Ljava/lang/String;
    move-object v2, p2

    .local v2, "shift":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v3, p3

    .local v3, "control":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v4, p4

    .local v4, "alt":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v5, p5

    .local v5, "meta":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v6, p6

    .local v6, "shortcut":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Ljavafx/scene/input/KeyCombination;-><init>(Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 41
    move-object v7, v0

    const-string v8, ""

    iput-object v8, v7, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    .line 72
    move-object v7, v1

    invoke-static {v7}, Ljavafx/scene/input/KeyCharacterCombination;->validateKeyCharacter(Ljava/lang/String;)V

    .line 73
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljavafx/scene/input/KeyCombination$Modifier;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "character"
        .end annotation
    .end param
    .param p2    # [Ljavafx/scene/input/KeyCombination$Modifier;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "modifiers"
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    move-object v1, p1

    .local v1, "character":Ljava/lang/String;
    move-object v2, p2

    .local v2, "modifiers":[Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/input/KeyCombination;-><init>([Ljavafx/scene/input/KeyCombination$Modifier;)V

    .line 41
    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    .line 91
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/input/KeyCharacterCombination;->validateKeyCharacter(Ljava/lang/String;)V

    .line 92
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private static validateKeyCharacter(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "keyCharacter":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Key character must not be null!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 170
    const/4 v2, 0x1

    move v0, v2

    .line 178
    .end local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    :goto_0
    return v0

    .line 173
    .restart local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/input/KeyCharacterCombination;

    if-nez v2, :cond_1

    .line 174
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 177
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyCharacterCombination;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCharacterCombination;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    .line 178
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
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 155
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/input/KeyCombination;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCharacterCombination;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 141
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/input/KeyCombination;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 144
    move-object v2, v1

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    :cond_0
    move-object v2, v1

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    const-string v4, "\'"

    const-string v5, "\\\'"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    const/16 v1, 0x17

    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/input/KeyCombination;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/KeyCharacterCombination;->character:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    return v0
.end method

.method public match(Ljavafx/scene/input/KeyEvent;)Z
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCharacterCombination;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    if-ne v2, v3, :cond_0

    .line 113
    const/4 v2, 0x0

    move v0, v2

    .line 117
    .end local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    :goto_0
    return v0

    .line 115
    .restart local v0    # "this":Ljavafx/scene/input/KeyCharacterCombination;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v2

    .line 116
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/input/KeyCharacterCombination;->getCharacter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->getKeyCodeForChar(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v2, v0

    move-object v3, v1

    .line 117
    invoke-super {v2, v3}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
