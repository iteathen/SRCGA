.class final Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "GlassViewEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->inputMethodEventComposed(Ljava/lang/String;I[I[I[B)Ljavafx/collections/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/input/InputMethodTextRun;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/input/InputMethodTextRun;>;"
    return-void
.end method
