.class Lcom/sun/glass/ui/gtk/GtkWindow;
.super Lcom/sun/glass/ui/Window;
.source "GtkWindow.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-wide v1, p1

    .local v1, "parent":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/Window;-><init>(J)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
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

    .line 38
    return-void
.end method

.method private native _setCursorType(JI)V
.end method

.method private native _setCustomCursor(JLcom/sun/glass/ui/Cursor;)V
.end method

.method private native _setGravity(JFF)V
.end method

.method private native _showOrHideChildren(JZ)V
.end method

.method private native getFrameExtents(J[I)V
.end method

.method private native isVisible(J)Z
.end method

.method private native maximizeImpl(JZZ)V
.end method

.method private native minimizeImpl(JZ)V
.end method

.method private native setBoundsImpl(JIIZZIIII)V
.end method

.method private native setVisibleImpl(JZ)V
.end method


# virtual methods
.method protected native _close(J)Z
.end method

.method protected native _createChildWindow(J)J
.end method

.method protected native _createWindow(JJI)J
.end method

.method protected native _enterModal(J)V
.end method

.method protected native _enterModalWithWindow(JJ)V
.end method

.method protected native _exitModal(J)V
.end method

.method protected native _getEmbeddedX(J)I
.end method

.method protected native _getEmbeddedY(J)I
.end method

.method protected native _getNativeWindowImpl(J)J
.end method

.method protected native _grabFocus(J)Z
.end method

.method protected _maximize(JZZ)Z
    .locals 11

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-wide v1, p1

    .local v1, "ptr":J
    move v3, p3

    .local v3, "maximize":Z
    move v4, p4

    .local v4, "wasMaximized":Z
    move-object v5, v0

    move-wide v6, v1

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/gtk/GtkWindow;->maximizeImpl(JZZ)V

    .line 145
    move-object v5, v0

    const/16 v6, 0x214

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/gtk/GtkWindow;->notifyStateChanged(I)V

    .line 146
    move v5, v3

    move v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    return v0
.end method

.method protected _minimize(JZ)Z
    .locals 9

    .prologue
    .line 136
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "minimize":Z
    move-object v5, v1

    move-wide v6, v2

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkWindow;->minimizeImpl(JZ)V

    .line 137
    move-object v5, v1

    const/16 v6, 0x213

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/gtk/GtkWindow;->notifyStateChanged(I)V

    .line 138
    move v5, v4

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    return v1
.end method

.method protected _releaseInput(J)V
    .locals 9

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
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
    .line 224
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
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
    .locals 27

    .prologue
    .line 201
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-wide/from16 v2, p1

    .local v2, "ptr":J
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
    move-object v15, v1

    move-wide/from16 v16, v2

    move/from16 v18, v12

    move/from16 v19, v13

    invoke-direct/range {v15 .. v19}, Lcom/sun/glass/ui/gtk/GtkWindow;->_setGravity(JFF)V

    .line 202
    move-object v15, v1

    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    invoke-direct/range {v15 .. v25}, Lcom/sun/glass/ui/gtk/GtkWindow;->setBoundsImpl(JIIZZIIII)V

    .line 204
    move v15, v8

    if-gtz v15, :cond_0

    move v15, v10

    if-gtz v15, :cond_1

    :cond_0
    move v15, v9

    if-gtz v15, :cond_2

    move v15, v11

    if-lez v15, :cond_2

    .line 205
    :cond_1
    const/4 v15, 0x4

    new-array v15, v15, [I

    move-object v14, v15

    .line 206
    .local v14, "extarr":[I
    move-object v15, v1

    move-wide/from16 v16, v2

    move-object/from16 v18, v14

    invoke-direct/range {v15 .. v18}, Lcom/sun/glass/ui/gtk/GtkWindow;->getFrameExtents(J[I)V

    .line 209
    move-object v15, v1

    const/16 v16, 0x1ff

    move/from16 v17, v8

    if-gtz v17, :cond_3

    move/from16 v17, v10

    if-lez v17, :cond_3

    move/from16 v17, v10

    move-object/from16 v18, v14

    const/16 v19, 0x0

    aget v18, v18, v19

    add-int v17, v17, v18

    move-object/from16 v18, v14

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    :goto_0
    move/from16 v18, v9

    if-gtz v18, :cond_4

    move/from16 v18, v11

    if-lez v18, :cond_4

    move/from16 v18, v11

    move-object/from16 v19, v14

    const/16 v20, 0x2

    aget v19, v19, v20

    add-int v18, v18, v19

    move-object/from16 v19, v14

    const/16 v20, 0x3

    aget v19, v19, v20

    add-int v18, v18, v19

    :goto_1
    invoke-virtual/range {v15 .. v18}, Lcom/sun/glass/ui/gtk/GtkWindow;->notifyResize(III)V

    .line 215
    .end local v14    # "extarr":[I
    :cond_2
    return-void

    .line 209
    .restart local v14    # "extarr":[I
    :cond_3
    move/from16 v17, v8

    goto :goto_0

    :cond_4
    move/from16 v18, v9

    goto :goto_1
.end method

.method protected _setCursor(JLcom/sun/glass/ui/Cursor;)V
    .locals 9

    .prologue
    .line 171
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v4, p3

    .local v4, "cursor":Lcom/sun/glass/ui/Cursor;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/glass/ui/Cursor;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 172
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkWindow;->_setCustomCursor(JLcom/sun/glass/ui/Cursor;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/glass/ui/Cursor;->getType()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkWindow;->_setCursorType(JI)V

    goto :goto_0
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
    .line 59
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move-wide v4, p3

    .local v4, "menubarPtr":J
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    return v1
.end method

.method protected native _setMinimumSize(JII)Z
.end method

.method protected native _setResizable(JZ)Z
.end method

.method protected native _setTitle(JLjava/lang/String;)Z
.end method

.method protected native _setView(JLcom/sun/glass/ui/View;)Z
.end method

.method protected _setVisible(JZ)Z
    .locals 9

    .prologue
    .line 130
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-wide v2, p1

    .local v2, "ptr":J
    move v4, p3

    .local v4, "visible":Z
    move-object v5, v1

    move-wide v6, v2

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkWindow;->setVisibleImpl(JZ)V

    .line 131
    move-object v5, v1

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/gtk/GtkWindow;->isVisible(J)Z

    move-result v5

    move v1, v5

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    return v1
.end method

.method protected native _toBack(J)V
.end method

.method protected native _toFront(J)V
.end method

.method protected native _ungrabFocus(J)V
.end method

.method public getNativeWindow()J
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move-object v1, v0

    move-object v2, v0

    invoke-super {v2}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/gtk/GtkWindow;->_getNativeWindowImpl(J)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    return-wide v0
.end method

.method protected notifyStateChanged(I)V
    .locals 8

    .prologue
    .line 152
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkWindow;
    move v2, p1

    .local v2, "state":I
    move v3, v2

    const/16 v4, 0x213

    if-ne v3, v4, :cond_1

    .line 153
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/gtk/GtkWindow;->getNativeHandle()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/gtk/GtkWindow;->_showOrHideChildren(JZ)V

    .line 157
    :cond_0
    :goto_0
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 164
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown window state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :goto_1
    return-void

    .line 154
    :cond_1
    move v3, v2

    const/16 v4, 0x215

    if-ne v3, v4, :cond_0

    .line 155
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/gtk/GtkWindow;->getNativeHandle()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/glass/ui/gtk/GtkWindow;->_showOrHideChildren(JZ)V

    goto :goto_0

    .line 161
    :pswitch_0
    move-object v3, v1

    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/glass/ui/gtk/GtkWindow;->getWidth()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/gtk/GtkWindow;->getHeight()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/gtk/GtkWindow;->notifyResize(III)V

    .line 162
    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x213
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
