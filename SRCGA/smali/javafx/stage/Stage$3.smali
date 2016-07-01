.class final Ljavafx/stage/Stage$3;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlwaysOnTop(Ljavafx/stage/Stage;Z)V
    .locals 5

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$3;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move v2, p2

    .local v2, "aot":Z
    move-object v3, v1

    invoke-static {v3}, Ljavafx/stage/Stage;->access$400(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 217
    return-void
.end method

.method public setFullScreen(Ljavafx/stage/Stage;Z)V
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$3;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move v2, p2

    .local v2, "fs":Z
    move-object v3, v1

    invoke-static {v3}, Ljavafx/stage/Stage;->access$300(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 212
    return-void
.end method

.method public setIconified(Ljavafx/stage/Stage;Z)V
    .locals 5

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$3;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move v2, p2

    .local v2, "iconified":Z
    move-object v3, v1

    invoke-static {v3}, Ljavafx/stage/Stage;->access$100(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 197
    return-void
.end method

.method public setMaximized(Ljavafx/stage/Stage;Z)V
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$3;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move v2, p2

    .local v2, "maximized":Z
    move-object v3, v1

    invoke-static {v3}, Ljavafx/stage/Stage;->access$200(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 202
    return-void
.end method

.method public setResizable(Ljavafx/stage/Stage;Z)V
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$3;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move v2, p2

    .local v2, "resizable":Z
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/stage/Stage;->resizableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    check-cast v3, Ljavafx/stage/Stage$ResizableProperty;

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage$ResizableProperty;->setNoInvalidate(Z)V

    .line 207
    return-void
.end method
