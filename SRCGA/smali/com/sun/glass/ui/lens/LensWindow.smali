.class final Lcom/sun/glass/ui/lens/LensWindow;
.super Lcom/sun/glass/ui/Window;
.source "LensWindow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v1, p1

    .local v1, "parent":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/Window;-><init>(J)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move v3, p3

    .local v3, "styleMask":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Window;-><init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V

    .line 41
    return-void
.end method

.method private native _getNativeWindowImpl(J)J
.end method

.method private native _toBackImpl(J)V
.end method

.method private native _toFrontImpl(J)V
.end method

.method private native attachViewToWindow(JJ)Z
.end method

.method private raiseOwnedWindows(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/Window;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-object v2, p1

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Window;>;"
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/glass/ui/lens/LensWindow;->remove(Lcom/sun/glass/ui/Window;)V

    .line 67
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/glass/ui/lens/LensWindow;->add(Lcom/sun/glass/ui/Window;)V

    .line 68
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/lens/LensWindow;->getRawHandle()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/lens/LensWindow;->_toFrontImpl(J)V

    .line 70
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/Window;

    move-object v4, v5

    .line 71
    .local v4, "w":Lcom/sun/glass/ui/Window;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/glass/ui/Window;->getOwner()Lcom/sun/glass/ui/Window;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    move-object v5, v4

    check-cast v5, Lcom/sun/glass/ui/lens/LensWindow;

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/lens/LensWindow;->raiseOwnedWindows(Ljava/util/List;)V

    .line 74
    :cond_0
    goto :goto_0

    .line 75
    .end local v4    # "w":Lcom/sun/glass/ui/Window;
    :cond_1
    return-void
.end method

.method private native setBoundsImpl(JIIIIZZZ)V
.end method


# virtual methods
.method protected native _close(J)Z
.end method

.method protected native _createChildWindow(J)J
.end method

.method protected native _createWindow(JJI)J
.end method

.method protected _enterModal(J)V
    .locals 7

    .prologue
    .line 306
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Platform modality not supported"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method protected _enterModalWithWindow(JJ)V
    .locals 9

    .prologue
    .line 312
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "dialog":J
    move-wide v4, p3

    .local v4, "window":J
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, "Platform modality not supported"

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method protected _exitModal(J)V
    .locals 7

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Platform modality not supported"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method protected _getEmbeddedX(J)I
    .locals 5

    .prologue
    .line 417
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x0

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensWindow;
    return v1
.end method

.method protected _getEmbeddedY(J)I
    .locals 5

    .prologue
    .line 420
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    const/4 v4, 0x0

    move v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensWindow;
    return v1
.end method

.method protected native _grabFocus(J)Z
.end method

.method protected native _maximize(JZZ)Z
.end method

.method protected native _minimize(JZ)Z
.end method

.method protected _notifyClose()V
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->notifyClose()V

    .line 328
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->close()V

    .line 329
    return-void
.end method

.method protected _notifyDestroy()V
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->notifyDestroy()V

    .line 333
    return-void
.end method

.method protected _notifyExpose(IIII)V
    .locals 11

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/lens/LensWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v6

    check-cast v6, Lcom/sun/glass/ui/lens/LensView;

    move-object v5, v6

    .line 359
    .local v5, "view":Lcom/sun/glass/ui/lens/LensView;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 360
    move-object v6, v5

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/glass/ui/lens/LensView;->_notifyRepaint(IIII)V

    .line 362
    :cond_0
    return-void
.end method

.method protected _notifyFocus(I)V
    .locals 4

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move v1, p1

    .local v1, "event":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/lens/LensWindow;->notifyFocus(I)V

    .line 337
    return-void
.end method

.method protected _notifyFocusDisabled()V
    .locals 2

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->notifyFocusDisabled()V

    .line 370
    return-void
.end method

.method protected _notifyFocusUngrab()V
    .locals 2

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensWindow;->notifyFocusUngrab()V

    .line 366
    return-void
.end method

.method protected _notifyMove(II)V
    .locals 6

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/lens/LensWindow;->notifyMove(II)V

    .line 345
    return-void
.end method

.method protected _notifyResize(III)V
    .locals 9

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/glass/ui/lens/LensWindow;->notifyResize(III)V

    .line 350
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/lens/LensWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/lens/LensView;

    move-object v4, v5

    .line 351
    .local v4, "view":Lcom/sun/glass/ui/lens/LensView;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 352
    move-object v5, v4

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/lens/LensView;->_notifyResize(II)V

    .line 354
    :cond_0
    return-void
.end method

.method protected _releaseInput(J)V
    .locals 9

    .prologue
    .line 433
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not supported yet."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected native _requestFocus(JI)Z
.end method

.method protected _requestInput(JLjava/lang/String;IDDDDDDDDDDDDDD)V
    .locals 39

    .prologue
    .line 428
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide/from16 v2, p1

    .local v2, "ptr":J
    move-object/from16 v4, p3

    .local v4, "text":Ljava/lang/String;
    move/from16 v5, p4

    .local v5, "type":I
    move-wide/from16 v6, p5

    .local v6, "width":D
    move-wide/from16 v8, p7

    .local v8, "height":D
    move-wide/from16 v10, p9

    .local v10, "Mxx":D
    move-wide/from16 v12, p11

    .local v12, "Mxy":D
    move-wide/from16 v14, p13

    .local v14, "Mxz":D
    move-wide/from16 v16, p15

    .local v16, "Mxt":D
    move-wide/from16 v18, p17

    .local v18, "Myx":D
    move-wide/from16 v20, p19

    .local v20, "Myy":D
    move-wide/from16 v22, p21

    .local v22, "Myz":D
    move-wide/from16 v24, p23

    .local v24, "Myt":D
    move-wide/from16 v26, p25

    .local v26, "Mzx":D
    move-wide/from16 v28, p27

    .local v28, "Mzy":D
    move-wide/from16 v30, p29

    .local v30, "Mzz":D
    move-wide/from16 v32, p31

    .local v32, "Mzt":D
    new-instance v34, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v37, v34

    move-object/from16 v34, v37

    move-object/from16 v35, v37

    const-string v36, "Not supported yet."

    invoke-direct/range {v35 .. v36}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v34
.end method

.method protected native _setAlpha(JF)V
.end method

.method protected native _setBackground(JFFF)Z
.end method

.method protected _setBounds(JIIZZIIIIFF)V
    .locals 31

    .prologue
    .line 111
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide/from16 v2, p1

    .local v2, "nativeWindowPointer":J
    move/from16 v4, p3

    .local v4, "x":I
    move/from16 v5, p4

    .local v5, "y":I
    move/from16 v6, p5

    .local v6, "xSet":Z
    move/from16 v7, p6

    .local v7, "ySet":Z
    move/from16 v8, p7

    .local v8, "w":I
    move/from16 v9, p8

    .local v9, "h":I
    move/from16 v10, p9

    .local v10, "cw":I
    move/from16 v11, p10

    .local v11, "ch":I
    move/from16 v12, p11

    .local v12, "xGravity":F
    move/from16 v13, p12

    .local v13, "yGravity":F
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 115
    .local v16, "isContentSize":Z
    move/from16 v19, v6

    if-nez v19, :cond_0

    move/from16 v19, v7

    if-eqz v19, :cond_1

    :cond_0
    const/16 v19, 0x1

    :goto_0
    move/from16 v17, v19

    .line 118
    .local v17, "needToUpdatePosition":Z
    const/16 v19, 0x0

    move/from16 v18, v19

    .line 120
    .local v18, "needResize":Z
    move/from16 v19, v6

    if-nez v19, :cond_2

    move/from16 v19, v7

    if-nez v19, :cond_2

    move/from16 v19, v8

    if-gez v19, :cond_2

    move/from16 v19, v9

    if-gez v19, :cond_2

    move/from16 v19, v10

    if-gez v19, :cond_2

    move/from16 v19, v11

    if-gez v19, :cond_2

    .line 122
    .line 174
    :goto_1
    return-void

    .line 115
    .end local v17    # "needToUpdatePosition":Z
    .end local v18    # "needResize":Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 125
    .restart local v17    # "needToUpdatePosition":Z
    .restart local v18    # "needResize":Z
    :cond_2
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v29, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v29

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_setBounds x="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " y="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " xSet="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ySet="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " w="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " h="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " cw="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ch="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " xGravity="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " yGravity="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 130
    move/from16 v19, v17

    if-eqz v19, :cond_4

    .line 131
    move/from16 v19, v6

    if-nez v19, :cond_3

    .line 133
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/glass/ui/lens/LensWindow;->getX()I

    move-result v19

    move/from16 v4, v19

    .line 136
    :cond_3
    move/from16 v19, v7

    if-nez v19, :cond_4

    .line 138
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/glass/ui/lens/LensWindow;->getY()I

    move-result v19

    move/from16 v5, v19

    .line 142
    :cond_4
    move/from16 v19, v8

    if-lez v19, :cond_5

    .line 144
    move/from16 v19, v8

    move/from16 v14, v19

    .line 145
    .local v14, "width":I
    const/16 v19, 0x1

    move/from16 v18, v19

    .line 156
    :goto_2
    move/from16 v19, v9

    if-lez v19, :cond_7

    .line 158
    move/from16 v19, v9

    move/from16 v15, v19

    .line 159
    .local v15, "height":I
    const/16 v19, 0x1

    move/from16 v18, v19

    .line 170
    :goto_3
    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v17

    move/from16 v27, v18

    move/from16 v28, v16

    invoke-direct/range {v19 .. v28}, Lcom/sun/glass/ui/lens/LensWindow;->setBoundsImpl(JIIIIZZZ)V

    .line 174
    goto/16 :goto_1

    .line 146
    .end local v14    # "width":I
    .end local v15    # "height":I
    :cond_5
    move/from16 v19, v10

    if-lez v19, :cond_6

    .line 148
    move/from16 v19, v10

    move/from16 v14, v19

    .line 149
    .restart local v14    # "width":I
    const/16 v19, 0x1

    move/from16 v16, v19

    .line 150
    const/16 v19, 0x1

    move/from16 v18, v19

    goto :goto_2

    .line 153
    .end local v14    # "width":I
    :cond_6
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/glass/ui/lens/LensWindow;->getWidth()I

    move-result v19

    move/from16 v14, v19

    .restart local v14    # "width":I
    goto :goto_2

    .line 160
    :cond_7
    move/from16 v19, v10

    if-lez v19, :cond_8

    .line 162
    move/from16 v19, v11

    move/from16 v15, v19

    .line 163
    .restart local v15    # "height":I
    const/16 v19, 0x1

    move/from16 v16, v19

    .line 164
    const/16 v19, 0x1

    move/from16 v18, v19

    goto :goto_3

    .line 167
    .end local v15    # "height":I
    :cond_8
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/glass/ui/lens/LensWindow;->getHeight()I

    move-result v19

    move/from16 v15, v19

    .restart local v15    # "height":I
    goto :goto_3
.end method

.method protected _setCursor(JLcom/sun/glass/ui/Cursor;)V
    .locals 7

    .prologue
    .line 413
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, p3

    .local v4, "cursor":Lcom/sun/glass/ui/Cursor;
    move-object v5, v4

    check-cast v5, Lcom/sun/glass/ui/lens/LensCursor;

    invoke-virtual {v5}, Lcom/sun/glass/ui/lens/LensCursor;->set()V

    .line 414
    return-void
.end method

.method protected native _setEnabled(JZ)V
.end method

.method protected native _setFocusable(JZ)V
.end method

.method protected native _setIcon(JLcom/sun/glass/ui/Pixels;)V
.end method

.method protected native _setLevel(JI)V
.end method

.method protected native _setMaximumSize(JII)Z
.end method

.method protected _setMenubar(JJ)Z
    .locals 7

    .prologue
    .line 218
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-wide v4, p3

    .local v4, "menubarPtr":J
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensWindow;
    return v1
.end method

.method protected native _setMinimumSize(JII)Z
.end method

.method protected native _setResizable(JZ)Z
.end method

.method protected native _setTitle(JLjava/lang/String;)Z
.end method

.method protected _setView(JLcom/sun/glass/ui/View;)Z
    .locals 15

    .prologue
    .line 192
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide/from16 v2, p1

    .local v2, "nativeWindowPointer":J
    move-object/from16 v4, p3

    .local v4, "view":Lcom/sun/glass/ui/View;
    const/4 v8, 0x0

    move v5, v8

    .line 193
    .local v5, "result":Z
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", visible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    .line 194
    invoke-virtual {v10}, Lcom/sun/glass/ui/lens/LensWindow;->isVisible()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 193
    invoke-virtual {v8, v9}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 195
    move-object v8, v4

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    :goto_0
    move-wide v6, v8

    .line 196
    .local v6, "nativeViewPtr":J
    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/lens/LensWindow;->attachViewToWindow(JJ)Z

    move-result v8

    move v5, v8

    .line 197
    move-object v8, v4

    if-eqz v8, :cond_0

    move v8, v5

    if-eqz v8, :cond_0

    .line 200
    move-object v8, v4

    check-cast v8, Lcom/sun/glass/ui/lens/LensView;

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/glass/ui/lens/LensWindow;->getWidth()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/glass/ui/lens/LensWindow;->getHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/lens/LensView;->_notifyResize(II)V

    .line 202
    :cond_0
    move v8, v5

    move v1, v8

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensWindow;
    return v1

    .line 195
    .end local v6    # "nativeViewPtr":J
    .restart local v1    # "this":Lcom/sun/glass/ui/lens/LensWindow;
    :cond_1
    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/glass/ui/View;->getNativeView()J

    move-result-wide v8

    goto :goto_0
.end method

.method protected native _setVisible(JZ)Z
.end method

.method protected _toBack(J)V
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v1, p1

    .local v1, "ptr":J
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/glass/ui/lens/LensWindow;->remove(Lcom/sun/glass/ui/Window;)V

    .line 59
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/glass/ui/lens/LensWindow;->addFirst(Lcom/sun/glass/ui/Window;)V

    .line 60
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/lens/LensWindow;->_toBackImpl(J)V

    .line 61
    return-void
.end method

.method protected _toFront(J)V
    .locals 7

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    invoke-static {}, Lcom/sun/glass/ui/lens/LensWindow;->getWindowsClone()Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 51
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Window;>;"
    move-object v5, v1

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/lens/LensWindow;->raiseOwnedWindows(Ljava/util/List;)V

    .line 52
    return-void
.end method

.method protected native _ungrabFocus(J)V
.end method

.method public getNativeWindow()J
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move-object v1, v0

    move-object v2, v0

    invoke-super {v2}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensWindow;->_getNativeWindowImpl(J)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensWindow;
    return-wide v0
.end method

.method protected nativeClose()V
    .locals 5

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    check-cast v2, Lcom/sun/glass/ui/lens/LensApplication;

    check-cast v2, Lcom/sun/glass/ui/lens/LensApplication;

    move-object v1, v2

    .line 408
    .local v1, "lensApp":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v2, v1

    move-object v3, v0

    const/16 v4, 0x209

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/lens/LensApplication;->notifyWindowEvent(Lcom/sun/glass/ui/lens/LensWindow;I)V

    .line 409
    return-void
.end method

.method protected nativeConfigure(IIIII)V
    .locals 12

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v7

    check-cast v7, Lcom/sun/glass/ui/lens/LensApplication;

    move-object v6, v7

    .line 389
    .local v6, "app":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/Application;->isEventThread()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 390
    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getX()I

    move-result v8

    if-ne v7, v8, :cond_0

    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getY()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 391
    :cond_0
    move-object v7, v0

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyMove(II)V

    .line 393
    :cond_1
    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_2

    move v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 394
    :cond_2
    move-object v7, v0

    move v8, v1

    move v9, v4

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyResize(III)V

    .line 404
    :cond_3
    :goto_0
    return-void

    .line 397
    :cond_4
    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getX()I

    move-result v8

    if-ne v7, v8, :cond_5

    move v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getY()I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 398
    :cond_5
    move-object v7, v6

    move-object v8, v0

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/glass/ui/lens/LensApplication;->notifyWindowMove(Lcom/sun/glass/ui/lens/LensWindow;II)V

    .line 400
    :cond_6
    move v7, v4

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_7

    move v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensWindow;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 401
    :cond_7
    move-object v7, v6

    move-object v8, v0

    move v9, v1

    move v10, v4

    move v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/glass/ui/lens/LensApplication;->notifyWindowResize(Lcom/sun/glass/ui/lens/LensWindow;III)V

    goto :goto_0
.end method

.method protected nativeExpose(IIII)V
    .locals 11

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensWindow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->isEventThread()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 379
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/lens/LensWindow;->_notifyExpose(IIII)V

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/lens/LensApplication;

    check-cast v5, Lcom/sun/glass/ui/lens/LensApplication;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/lens/LensApplication;->windowExpose(Lcom/sun/glass/ui/lens/LensWindow;IIII)V

    goto :goto_0
.end method
