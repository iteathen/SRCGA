.class Ljavafx/scene/Scene$DropTargetListener;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKDropTargetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropTargetListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 2799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DropTargetListener;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragEnter(DDDDLjavafx/scene/input/TransferMode;Lcom/sun/javafx/tk/TKClipboard;)Ljavafx/scene/input/TransferMode;
    .locals 35

    .prologue
    .line 2809
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$DropTargetListener;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "screenX":D
    move-wide/from16 v8, p7

    .local v8, "screenY":D
    move-object/from16 v10, p9

    .local v10, "transferMode":Ljavafx/scene/input/TransferMode;
    move-object/from16 v11, p10

    .local v11, "dragboard":Lcom/sun/javafx/tk/TKClipboard;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-nez v14, :cond_0

    .line 2810
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    new-instance v15, Ljavafx/scene/Scene$DnDGesture;

    move-object/from16 v34, v15

    move-object/from16 v15, v34

    move-object/from16 v16, v34

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljavafx/scene/Scene$DnDGesture;-><init>(Ljavafx/scene/Scene;)V

    iput-object v15, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2812
    :cond_0
    move-object v14, v11

    invoke-static {v14}, Ljavafx/scene/input/Dragboard;->impl_createDragboard(Lcom/sun/javafx/tk/TKClipboard;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    move-object v12, v14

    .line 2813
    .local v12, "db":Ljavafx/scene/input/Dragboard;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v15, v12

    invoke-static {v14, v15}, Ljavafx/scene/Scene$DnDGesture;->access$6002(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/Dragboard;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    .line 2814
    new-instance v14, Ljavafx/scene/input/DragEvent;

    move-object/from16 v34, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v34

    sget-object v16, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object/from16 v17, v0

    .line 2815
    invoke-static/range {v17 .. v17}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v17

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v26, v10

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v29, v1

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v29, v0

    move-wide/from16 v30, v2

    move-wide/from16 v32, v4

    .line 2816
    invoke-static/range {v29 .. v33}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v29

    invoke-direct/range {v15 .. v29}, Ljavafx/scene/input/DragEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v13, v14

    .line 2817
    .local v13, "dragEvent":Ljavafx/scene/input/DragEvent;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v15, v13

    invoke-static {v14, v15}, Ljavafx/scene/Scene$DnDGesture;->access$6100(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;

    move-result-object v14

    move-object v1, v14

    .end local v1    # "this":Ljavafx/scene/Scene$DropTargetListener;
    return-object v1
.end method

.method public dragExit(DDDD)V
    .locals 33

    .prologue
    .line 2840
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$DropTargetListener;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "screenX":D
    move-wide/from16 v9, p7

    .local v9, "screenY":D
    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-nez v12, :cond_1

    .line 2841
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "GOT A dragExit when dndGesture is null!"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2855
    :cond_0
    :goto_0
    return-void

    .line 2843
    :cond_1
    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v12}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v12

    if-nez v12, :cond_2

    .line 2844
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v32, v12

    move-object/from16 v12, v32

    move-object/from16 v13, v32

    const-string v14, "dndGesture.dragboard is null in dragExit"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2846
    :cond_2
    new-instance v12, Ljavafx/scene/input/DragEvent;

    move-object/from16 v32, v12

    move-object/from16 v12, v32

    move-object/from16 v13, v32

    sget-object v14, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object v15, v2

    iget-object v15, v15, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v15, v15, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2847
    invoke-static {v15}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v15

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v27, v0

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    .line 2848
    invoke-static/range {v27 .. v31}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v27

    invoke-direct/range {v13 .. v27}, Ljavafx/scene/input/DragEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v11, v12

    .line 2849
    .local v11, "dragEvent":Ljavafx/scene/input/DragEvent;
    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v13, v11

    invoke-static {v12, v13}, Ljavafx/scene/Scene$DnDGesture;->access$6200(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)V

    .line 2850
    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v12}, Ljavafx/scene/Scene$DnDGesture;->access$6300(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/event/EventTarget;

    move-result-object v12

    if-nez v12, :cond_0

    .line 2851
    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljavafx/scene/Scene$DnDGesture;->access$6002(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/Dragboard;)Ljavafx/scene/input/Dragboard;

    move-result-object v12

    .line 2852
    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    const/4 v13, 0x0

    iput-object v13, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    goto :goto_0
.end method

.method public dragOver(DDDDLjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 33

    .prologue
    .line 2824
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$DropTargetListener;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "screenX":D
    move-wide/from16 v8, p7

    .local v8, "screenY":D
    move-object/from16 v10, p9

    .local v10, "transferMode":Ljavafx/scene/input/TransferMode;
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-nez v12, :cond_0

    .line 2825
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "GOT A dragOver when dndGesture is null!"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2826
    const/4 v12, 0x0

    move-object v1, v12

    .line 2834
    .end local v1    # "this":Ljavafx/scene/Scene$DropTargetListener;
    :goto_0
    return-object v1

    .line 2828
    .restart local v1    # "this":Ljavafx/scene/Scene$DropTargetListener;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v12}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v12

    if-nez v12, :cond_1

    .line 2829
    new-instance v12, Ljava/lang/RuntimeException;

    move-object/from16 v32, v12

    move-object/from16 v12, v32

    move-object/from16 v13, v32

    const-string v14, "dndGesture.dragboard is null in dragOver"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2831
    :cond_1
    new-instance v12, Ljavafx/scene/input/DragEvent;

    move-object/from16 v32, v12

    move-object/from16 v12, v32

    move-object/from16 v13, v32

    sget-object v14, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v15, v15, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2832
    invoke-static {v15}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v15

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v1

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v27, v0

    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    .line 2833
    invoke-static/range {v27 .. v31}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v27

    invoke-direct/range {v13 .. v27}, Ljavafx/scene/input/DragEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v11, v12

    .line 2834
    .local v11, "dragEvent":Ljavafx/scene/input/DragEvent;
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v12, v12, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v13, v11

    invoke-static {v12, v13}, Ljavafx/scene/Scene$DnDGesture;->access$6100(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;

    move-result-object v12

    move-object v1, v12

    goto :goto_0
.end method

.method public drop(DDDDLjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 35

    .prologue
    .line 2862
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$DropTargetListener;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "screenX":D
    move-wide/from16 v8, p7

    .local v8, "screenY":D
    move-object/from16 v10, p9

    .local v10, "transferMode":Ljavafx/scene/input/TransferMode;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-nez v14, :cond_0

    .line 2863
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "GOT A drop when dndGesture is null!"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2864
    const/4 v14, 0x0

    move-object v1, v14

    .line 2887
    .end local v1    # "this":Ljavafx/scene/Scene$DropTargetListener;
    :goto_0
    return-object v1

    .line 2866
    .restart local v1    # "this":Ljavafx/scene/Scene$DropTargetListener;
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v14}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    if-nez v14, :cond_1

    .line 2867
    new-instance v14, Ljava/lang/RuntimeException;

    move-object/from16 v34, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v34

    const-string v16, "dndGesture.dragboard is null in dragDrop"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2869
    :cond_1
    new-instance v14, Ljavafx/scene/input/DragEvent;

    move-object/from16 v34, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v34

    sget-object v16, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object/from16 v17, v0

    .line 2870
    invoke-static/range {v17 .. v17}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v17

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v26, v10

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v29, v1

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v29, v0

    move-wide/from16 v30, v2

    move-wide/from16 v32, v4

    .line 2871
    invoke-static/range {v29 .. v33}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v29

    invoke-direct/range {v15 .. v29}, Ljavafx/scene/input/DragEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v11, v14

    .line 2873
    .local v11, "dragEvent":Ljavafx/scene/input/DragEvent;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v14}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 2877
    move-object v14, v1

    :try_start_0
    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v15, v11

    invoke-static {v14, v15}, Ljavafx/scene/Scene$DnDGesture;->access$6400(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    move-object v12, v14

    .line 2879
    .local v12, "tm":Ljavafx/scene/input/TransferMode;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2880
    invoke-static {v14}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    const/4 v15, 0x1

    .line 2879
    invoke-static {v14, v15}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 2881
    .line 2883
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v14}, Ljavafx/scene/Scene$DnDGesture;->access$6300(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/event/EventTarget;

    move-result-object v14

    if-nez v14, :cond_2

    .line 2884
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljavafx/scene/Scene$DnDGesture;->access$6002(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/Dragboard;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    .line 2885
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    const/4 v15, 0x0

    iput-object v15, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2887
    :cond_2
    move-object v14, v12

    move-object v1, v14

    goto/16 :goto_0

    .line 2879
    .end local v12    # "tm":Ljavafx/scene/input/TransferMode;
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DropTargetListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2880
    invoke-static {v14}, Ljavafx/scene/Scene$DnDGesture;->access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    const/4 v15, 0x1

    .line 2879
    invoke-static {v14, v15}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    move-object v14, v13

    throw v14
.end method
