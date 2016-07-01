.class Ljavafx/scene/Scene$DragGestureListener;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKDragGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 2892
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DragGestureListener;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$DragGestureListener;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragGestureRecognized(DDDDILcom/sun/javafx/tk/TKClipboard;)V
    .locals 35

    .prologue
    .line 2898
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$DragGestureListener;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "screenX":D
    move-wide/from16 v8, p7

    .local v8, "screenY":D
    move/from16 v10, p9

    .local v10, "button":I
    move-object/from16 v11, p10

    .local v11, "dragboard":Lcom/sun/javafx/tk/TKClipboard;
    move-object v14, v11

    invoke-static {v14}, Ljavafx/scene/input/Dragboard;->impl_createDragboard(Lcom/sun/javafx/tk/TKClipboard;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    move-object v12, v14

    .line 2899
    .local v12, "db":Ljavafx/scene/input/Dragboard;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DragGestureListener;->this$0:Ljavafx/scene/Scene;

    new-instance v15, Ljavafx/scene/Scene$DnDGesture;

    move-object/from16 v34, v15

    move-object/from16 v15, v34

    move-object/from16 v16, v34

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/Scene$DragGestureListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljavafx/scene/Scene$DnDGesture;-><init>(Ljavafx/scene/Scene;)V

    iput-object v15, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2900
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DragGestureListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v15, v12

    invoke-static {v14, v15}, Ljavafx/scene/Scene$DnDGesture;->access$6002(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/Dragboard;)Ljavafx/scene/input/Dragboard;

    move-result-object v14

    .line 2902
    new-instance v14, Ljavafx/scene/input/DragEvent;

    move-object/from16 v34, v14

    move-object/from16 v14, v34

    move-object/from16 v15, v34

    sget-object v16, Ljavafx/scene/input/DragEvent;->ANY:Ljavafx/event/EventType;

    move-object/from16 v17, v12

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v29, v1

    move-object/from16 v0, v29

    iget-object v0, v0, Ljavafx/scene/Scene$DragGestureListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v29, v0

    move-wide/from16 v30, v2

    move-wide/from16 v32, v4

    .line 2903
    invoke-static/range {v29 .. v33}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v29

    invoke-direct/range {v15 .. v29}, Ljavafx/scene/input/DragEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v13, v14

    .line 2904
    .local v13, "dragEvent":Ljavafx/scene/input/DragEvent;
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DragGestureListener;->this$0:Ljavafx/scene/Scene;

    iget-object v14, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v15, v13

    invoke-static {v14, v15}, Ljavafx/scene/Scene$DnDGesture;->access$6500(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)Z

    move-result v14

    .line 2905
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene$DragGestureListener;->this$0:Ljavafx/scene/Scene;

    const/4 v15, 0x0

    iput-object v15, v14, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2906
    return-void
.end method
