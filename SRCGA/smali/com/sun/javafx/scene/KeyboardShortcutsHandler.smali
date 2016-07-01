.class public final Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
.super Lcom/sun/javafx/event/BasicEventDispatcher;
.source "KeyboardShortcutsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    }
.end annotation


# instance fields
.field private accelerators:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mnemonics:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/Mnemonic;",
            ">;>;"
        }
    .end annotation
.end field

.field private mnemonicsDisplayEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/event/BasicEventDispatcher;-><init>()V

    .line 377
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonicsDisplayEnabled:Z

    return-void
.end method

.method private processAccelerators(Ljavafx/scene/input/KeyEvent;)V
    .locals 8

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    if-eqz v6, :cond_2

    .line 334
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->lock()V

    .line 337
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    .line 339
    .local v3, "accelerator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/KeyCombination;Ljava/lang/Runnable;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/input/KeyCombination;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 340
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    move-object v4, v6

    .line 341
    .local v4, "acceleratorRunnable":Ljava/lang/Runnable;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 347
    move-object v6, v4

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 348
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/KeyEvent;->consume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .end local v4    # "acceleratorRunnable":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 353
    .end local v3    # "accelerator":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/KeyCombination;Ljava/lang/Runnable;>;"
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->unlock()V

    .line 354
    .line 356
    :cond_2
    return-void

    .line 353
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->unlock()V

    move-object v6, v5

    throw v6
.end method

.method private processMnemonics(Ljavafx/scene/input/KeyEvent;)V
    .locals 23

    .prologue
    .line 203
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object/from16 v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    if-eqz v10, :cond_9

    .line 205
    const/4 v10, 0x0

    move-object v2, v10

    .line 208
    .local v2, "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    invoke-interface {v10}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v3, v10

    :goto_0
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v4, v10

    .line 210
    .local v4, "mnemonic":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/KeyCombination;Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;>;"
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->isMnemonicsDisplayEnabled()Z

    move-result v10

    if-nez v10, :cond_4

    .line 211
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/KeyCombination;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 212
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/collections/ObservableList;

    move-object v2, v10

    .line 239
    .end local v4    # "mnemonic":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/KeyCombination;Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;>;"
    :cond_0
    :goto_1
    move-object v10, v2

    if-eqz v10, :cond_9

    .line 248
    const/4 v10, 0x0

    move v3, v10

    .line 249
    .local v3, "multipleNodes":Z
    const/4 v10, 0x0

    move-object v4, v10

    .line 250
    .local v4, "firstNode":Ljavafx/scene/Node;
    const/4 v10, 0x0

    move-object v5, v10

    .line 251
    .local v5, "firstMnemonics":Ljavafx/scene/input/Mnemonic;
    const/4 v10, -0x1

    move v6, v10

    .line 252
    .local v6, "focusedIndex":I
    const/4 v10, -0x1

    move v7, v10

    .line 257
    .local v7, "nextFocusable":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_2
    move v10, v8

    move-object v11, v2

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 258
    move-object v10, v2

    move v11, v8

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljavafx/scene/input/Mnemonic;

    if-eqz v10, :cond_3

    .line 259
    move-object v10, v2

    move v11, v8

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/Mnemonic;

    invoke-virtual {v10}, Ljavafx/scene/input/Mnemonic;->getNode()Ljavafx/scene/Node;

    move-result-object v10

    move-object v9, v10

    .line 261
    .local v9, "currentNode":Ljavafx/scene/Node;
    move-object v10, v5

    if-nez v10, :cond_1

    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 262
    move-object v10, v2

    move v11, v8

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/Mnemonic;

    move-object v5, v10

    .line 265
    :cond_1
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 266
    move-object v10, v4

    if-nez v10, :cond_6

    .line 267
    move-object v10, v9

    move-object v4, v10

    .line 284
    :cond_2
    :goto_3
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/Node;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 285
    move v10, v8

    move v6, v10

    .line 257
    .end local v9    # "currentNode":Ljavafx/scene/Node;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 222
    .end local v3    # "multipleNodes":Z
    .end local v5    # "firstMnemonics":Ljavafx/scene/input/Mnemonic;
    .end local v6    # "focusedIndex":I
    .end local v7    # "nextFocusable":I
    .end local v8    # "i":I
    .local v4, "mnemonic":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/KeyCombination;Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;>;"
    :cond_4
    new-instance v10, Ljavafx/scene/input/KeyEvent;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    const/4 v12, 0x0

    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/input/KeyEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v13

    sget-object v14, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v15, v1

    .line 223
    invoke-virtual {v15}, Ljavafx/scene/input/KeyEvent;->getCharacter()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    .line 224
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/KeyEvent;->getText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    .line 225
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v17

    move-object/from16 v18, v1

    .line 226
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v18

    move-object/from16 v19, v1

    .line 227
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v21, v1

    .line 229
    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v21

    invoke-direct/range {v11 .. v21}, Ljavafx/scene/input/KeyEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    move-object v5, v10

    .line 232
    .local v5, "fakeEvent":Ljavafx/scene/input/KeyEvent;
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/KeyCombination;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 233
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/collections/ObservableList;

    move-object v2, v10

    .line 234
    goto/16 :goto_1

    .line 237
    .end local v5    # "fakeEvent":Ljavafx/scene/input/KeyEvent;
    :cond_5
    goto/16 :goto_0

    .line 273
    .restart local v3    # "multipleNodes":Z
    .local v4, "firstNode":Ljavafx/scene/Node;
    .local v5, "firstMnemonics":Ljavafx/scene/input/Mnemonic;
    .restart local v6    # "focusedIndex":I
    .restart local v7    # "nextFocusable":I
    .restart local v8    # "i":I
    .restart local v9    # "currentNode":Ljavafx/scene/Node;
    :cond_6
    const/4 v10, 0x1

    move v3, v10

    .line 274
    move v10, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 275
    move v10, v7

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 276
    move v10, v8

    move v7, v10

    goto :goto_3

    .line 290
    .end local v9    # "currentNode":Ljavafx/scene/Node;
    :cond_7
    move-object v10, v4

    if-eqz v10, :cond_8

    .line 291
    move v10, v3

    if-nez v10, :cond_a

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 295
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/Node;->requestFocus()V

    .line 296
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 325
    :cond_8
    :goto_5
    move v10, v3

    if-nez v10, :cond_9

    move-object v10, v5

    if-eqz v10, :cond_9

    .line 326
    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/input/Mnemonic;->fire()V

    .line 330
    .end local v2    # "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    .end local v3    # "multipleNodes":Z
    .end local v4    # "firstNode":Ljavafx/scene/Node;
    .end local v5    # "firstMnemonics":Ljavafx/scene/input/Mnemonic;
    .end local v6    # "focusedIndex":I
    .end local v7    # "nextFocusable":I
    .end local v8    # "i":I
    :cond_9
    return-void

    .line 291
    .restart local v2    # "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    .restart local v3    # "multipleNodes":Z
    .restart local v4    # "firstNode":Ljavafx/scene/Node;
    .restart local v5    # "firstMnemonics":Ljavafx/scene/input/Mnemonic;
    .restart local v6    # "focusedIndex":I
    .restart local v7    # "nextFocusable":I
    .restart local v8    # "i":I
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 304
    :cond_b
    move v10, v6

    const/4 v11, -0x1

    if-ne v10, v11, :cond_c

    .line 305
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/Node;->requestFocus()V

    .line 306
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto :goto_5

    .line 309
    :cond_c
    move v10, v6

    move-object v11, v2

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-lt v10, v11, :cond_d

    .line 310
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/Node;->requestFocus()V

    .line 311
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto :goto_5

    .line 314
    :cond_d
    move v10, v7

    const/4 v11, -0x1

    if-eq v10, v11, :cond_e

    .line 315
    move-object v10, v2

    move v11, v7

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/Mnemonic;

    invoke-virtual {v10}, Ljavafx/scene/input/Mnemonic;->getNode()Ljavafx/scene/Node;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/Node;->requestFocus()V

    .line 320
    :goto_6
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto :goto_5

    .line 318
    :cond_e
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/Node;->requestFocus()V

    goto :goto_6
.end method

.method private processMnemonicsKeyDisplay()V
    .locals 8

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    const/4 v6, 0x0

    move-object v1, v6

    .line 360
    .local v1, "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    if-eqz v6, :cond_1

    .line 361
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    invoke-interface {v6}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    .line 362
    .local v3, "mnemonic":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/KeyCombination;Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableList;

    move-object v1, v6

    .line 364
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 365
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move-object v7, v1

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 366
    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/input/Mnemonic;

    invoke-virtual {v6}, Ljavafx/scene/input/Mnemonic;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    move-object v5, v6

    .line 367
    .local v5, "currentNode":Ljavafx/scene/Node;
    move-object v6, v5

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonicsDisplayEnabled:Z

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->impl_setShowMnemonics(Z)V

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 370
    .end local v4    # "i":I
    .end local v5    # "currentNode":Ljavafx/scene/Node;
    :cond_0
    goto :goto_0

    .line 372
    .end local v3    # "mnemonic":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/KeyCombination;Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;>;"
    :cond_1
    return-void
.end method

.method private traverse(Ljavafx/event/Event;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->consume()V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public addMnemonic(Ljavafx/scene/input/Mnemonic;)V
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, p1

    .local v1, "m":Ljavafx/scene/input/Mnemonic;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->getMnemonics()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/Mnemonic;->getKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    move-object v2, v5

    .line 58
    .local v2, "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    .line 59
    new-instance v5, Lcom/sun/javafx/collections/ObservableListWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v7}, Lcom/sun/javafx/collections/ObservableListWrapper;-><init>(Ljava/util/List;)V

    move-object v2, v5

    .line 60
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->getMnemonics()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/Mnemonic;->getKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v6

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 62
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    .line 63
    .local v3, "foundMnemonic":Z
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v2

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 64
    move-object v5, v2

    move v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 65
    const/4 v5, 0x1

    move v3, v5

    .line 63
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_2
    move v5, v3

    if-nez v5, :cond_3

    .line 69
    move-object v5, v2

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 71
    :cond_3
    return-void
.end method

.method public clearNodeMnemonics(Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    if-eqz v6, :cond_2

    .line 391
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    invoke-interface {v6}, Ljavafx/collections/ObservableMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableList;

    move-object v3, v6

    .line 392
    .local v3, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/input/Mnemonic;>;"
    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 393
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/input/Mnemonic;

    move-object v5, v6

    .line 394
    .local v5, "m":Ljavafx/scene/input/Mnemonic;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/input/Mnemonic;->getNode()Ljavafx/scene/Node;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 395
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 397
    :cond_0
    goto :goto_1

    .line 398
    .end local v5    # "m":Ljavafx/scene/input/Mnemonic;
    :cond_1
    goto :goto_0

    .line 400
    .end local v3    # "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/input/Mnemonic;>;"
    :cond_2
    return-void
.end method

.method public dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_2

    .line 152
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 153
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->processMnemonics(Ljavafx/scene/input/KeyEvent;)V

    .line 162
    :cond_0
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->processAccelerators(Ljavafx/scene/input/KeyEvent;)V

    .line 166
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 167
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->processTraversal(Ljavafx/event/Event;)V

    .line 175
    :cond_2
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-nez v2, :cond_4

    .line 176
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_3

    .line 177
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 181
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->isMnemonicsDisplayEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 182
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->setMnemonicsDisplayEnabled(Z)V

    .line 191
    :cond_3
    :goto_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_4

    .line 192
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v2

    if-nez v2, :cond_4

    .line 193
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v2

    if-nez v2, :cond_4

    .line 194
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->setMnemonicsDisplayEnabled(Z)V

    .line 199
    :cond_4
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    return-object v0

    .line 157
    .restart local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    :cond_5
    move-object v2, v1

    check-cast v2, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->isMnemonicsDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :cond_6
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->processMnemonics(Ljavafx/scene/input/KeyEvent;)V

    goto :goto_0

    .line 185
    :cond_7
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->isMnemonicsDisplayEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->setMnemonicsDisplayEnabled(Z)V

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getAccelerators()Ljavafx/collections/ObservableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->accelerators:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 93
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;-><init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$1;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    .line 94
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->acceleratorsBackingMap:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableMapWrapper;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->accelerators:Ljavafx/collections/ObservableMap;

    .line 96
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->accelerators:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    return-object v0
.end method

.method public getMnemonics()Ljavafx/collections/ObservableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/Mnemonic;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 86
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableMapWrapper;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    .line 88
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonics:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    return-object v0
.end method

.method public isMnemonicsDisplayEnabled()Z
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonicsDisplayEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    return v0
.end method

.method public processTraversal(Ljavafx/event/Event;)V
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/KeyEvent;

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v3, v4, :cond_0

    .line 107
    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isMetaDown()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isControlDown()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    move-object v2, v3

    .line 109
    .local v2, "obj":Ljavafx/event/EventTarget;
    move-object v3, v2

    instance-of v3, v3, Ljavafx/scene/Node;

    if-eqz v3, :cond_0

    .line 111
    sget-object v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v4, v1

    check-cast v4, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 138
    .end local v2    # "obj":Ljavafx/event/EventTarget;
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v2    # "obj":Ljavafx/event/EventTarget;
    :pswitch_0
    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyEvent;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->traverse(Ljavafx/event/Event;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    goto :goto_0

    .line 117
    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->traverse(Ljavafx/event/Event;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 119
    goto :goto_0

    .line 121
    :pswitch_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->traverse(Ljavafx/event/Event;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 122
    goto :goto_0

    .line 124
    :pswitch_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->traverse(Ljavafx/event/Event;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 125
    goto :goto_0

    .line 127
    :pswitch_3
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->traverse(Ljavafx/event/Event;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 128
    goto :goto_0

    .line 130
    :pswitch_4
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/Node;

    sget-object v6, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->traverse(Ljavafx/event/Event;Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 131
    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public removeMnemonic(Ljavafx/scene/input/Mnemonic;)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move-object v1, p1

    .local v1, "m":Ljavafx/scene/input/Mnemonic;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->getMnemonics()Ljavafx/collections/ObservableMap;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/Mnemonic;->getKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v2, v4

    .line 75
    .local v2, "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 76
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 77
    move-object v4, v2

    move v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/input/Mnemonic;

    invoke-virtual {v4}, Ljavafx/scene/input/Mnemonic;->getNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/Mnemonic;->getNode()Ljavafx/scene/Node;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 78
    move-object v4, v2

    move v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 76
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public setMnemonicsDisplayEnabled(Z)V
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
    move v1, p1

    .local v1, "b":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonicsDisplayEnabled:Z

    if-eq v2, v3, :cond_0

    .line 384
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->mnemonicsDisplayEnabled:Z

    .line 385
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->processMnemonicsKeyDisplay()V

    .line 387
    :cond_0
    return-void
.end method
