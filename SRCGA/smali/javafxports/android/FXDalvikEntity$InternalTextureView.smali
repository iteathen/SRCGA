.class Ljavafxports/android/FXDalvikEntity$InternalTextureView;
.super Landroid/view/TextureView;
.source "FXDalvikEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafxports/android/FXDalvikEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalTextureView"
.end annotation


# static fields
.field private static final ACTION_POINTER_STILL:I = -0x1


# instance fields
.field final synthetic this$0:Ljavafxports/android/FXDalvikEntity;


# direct methods
.method public constructor <init>(Ljavafxports/android/FXDalvikEntity;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafxports/android/FXDalvikEntity$InternalTextureView;->this$0:Ljavafxports/android/FXDalvikEntity;

    .line 335
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 336
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafxports/android/FXDalvikEntity$InternalTextureView;->setFocusableInTouchMode(Z)V

    .line 337
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    # getter for: Ljavafxports/android/FXDalvikEntity;->glassHasStarted:Z
    invoke-static {}, Ljavafxports/android/FXDalvikEntity;->access$200()Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    const/4 v2, 0x0

    move v0, v2

    .line 396
    .end local v0    # "this":Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    :goto_0
    return v0

    .line 395
    .restart local v0    # "this":Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    :cond_0
    invoke-static {}, Ljavafxports/android/KeyEventProcessor;->getInstance()Ljavafxports/android/KeyEventProcessor;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafxports/android/KeyEventProcessor;->process(Landroid/view/KeyEvent;)V

    .line 396
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .prologue
    .line 343
    move-object/from16 v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    move-object/from16 v1, p1

    .local v1, "event":Landroid/view/MotionEvent;
    # getter for: Ljavafxports/android/FXDalvikEntity;->glassHasStarted:Z
    invoke-static {}, Ljavafxports/android/FXDalvikEntity;->access$200()Z

    move-result v11

    if-nez v11, :cond_0

    .line 344
    const/4 v11, 0x0

    move v0, v11

    .line 387
    .end local v0    # "this":Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    :goto_0
    return v0

    .line 346
    .restart local v0    # "this":Ljavafxports/android/FXDalvikEntity$InternalTextureView;
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    move v2, v11

    .line 347
    .local v2, "action":I
    move v11, v2

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v3, v11

    .line 348
    .local v3, "actionCode":I
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    move v4, v11

    .line 349
    .local v4, "pcount":I
    move v11, v4

    new-array v11, v11, [I

    move-object v5, v11

    .line 350
    .local v5, "actions":[I
    move v11, v4

    new-array v11, v11, [I

    move-object v6, v11

    .line 351
    .local v6, "ids":[I
    move v11, v4

    new-array v11, v11, [I

    move-object v7, v11

    .line 352
    .local v7, "touchXs":[I
    move v11, v4

    new-array v11, v11, [I

    move-object v8, v11

    .line 354
    .local v8, "touchYs":[I
    move v11, v4

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 356
    move v11, v3

    const/4 v12, 0x5

    if-eq v11, v12, :cond_1

    move v11, v3

    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    .line 359
    :cond_1
    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    move v9, v11

    .line 360
    .local v9, "pointerIndex":I
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_1
    move v11, v10

    move v12, v4

    if-ge v11, v12, :cond_3

    .line 361
    move-object v11, v5

    move v12, v10

    move v13, v9

    move v14, v10

    if-ne v13, v14, :cond_2

    move v13, v3

    :goto_2
    aput v13, v11, v12

    .line 362
    move-object v11, v6

    move v12, v10

    move-object v13, v1

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    aput v13, v11, v12

    .line 363
    move-object v11, v7

    move v12, v10

    move-object v13, v1

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    .line 364
    move-object v11, v8

    move v12, v10

    move-object v13, v1

    move v14, v10

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    .line 360
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 361
    :cond_2
    const/4 v13, -0x1

    goto :goto_2

    .line 366
    .line 381
    .end local v9    # "pointerIndex":I
    .end local v10    # "i":I
    :cond_3
    :goto_3
    const-string v11, "FXEntity"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "call native MultitouchEvent, density = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Ljavafxports/android/FXDalvikEntity$InternalTextureView;->this$0:Ljavafxports/android/FXDalvikEntity;

    invoke-static {v13}, Ljavafxports/android/FXDalvikEntity;->access$300(Ljavafxports/android/FXDalvikEntity;)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", touchXs0 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 383
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Ljavafxports/android/FXDalvikEntity$InternalTextureView;->this$0:Ljavafxports/android/FXDalvikEntity;

    invoke-static {v11}, Ljavafxports/android/FXDalvikEntity;->access$400(Ljavafxports/android/FXDalvikEntity;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    move-object/from16 v16, v5

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x2

    move-object/from16 v16, v6

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x3

    move-object/from16 v16, v7

    aput-object v16, v14, v15

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x4

    move-object/from16 v16, v8

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 386
    .line 387
    const/4 v11, 0x1

    move v0, v11

    goto/16 :goto_0

    .line 366
    :cond_4
    move v11, v3

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 367
    const/4 v11, 0x0

    move v9, v11

    .local v9, "i":I
    :goto_4
    move v11, v9

    move v12, v4

    if-ge v11, v12, :cond_5

    .line 368
    move-object v11, v7

    move v12, v9

    move-object v13, v1

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    .line 369
    move-object v11, v8

    move v12, v9

    move-object v13, v1

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    .line 370
    move-object v11, v5

    move v12, v9

    const/4 v13, 0x2

    aput v13, v11, v12

    .line 371
    move-object v11, v6

    move v12, v9

    move-object v13, v1

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    aput v13, v11, v12

    .line 367
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    goto/16 :goto_3

    .line 376
    .end local v9    # "i":I
    :cond_6
    move-object v11, v5

    const/4 v12, 0x0

    move v13, v3

    aput v13, v11, v12

    .line 377
    move-object v11, v6

    const/4 v12, 0x0

    move-object v13, v1

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    aput v13, v11, v12

    .line 378
    move-object v11, v7

    const/4 v12, 0x0

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    .line 379
    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    aput v13, v11, v12

    goto/16 :goto_3

    .line 384
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 385
    .local v9, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string v13, "Failed to invoke com.sun.glass.ui.android.DalvikInput.onMultiTouchEvent method by reflection"

    move-object v14, v9

    invoke-direct {v12, v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method
