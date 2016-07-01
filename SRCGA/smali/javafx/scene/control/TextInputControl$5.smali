.class Ljavafx/scene/control/TextInputControl$5;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TextInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextInputControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/control/TextFormatter",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private oldFormatter:Ljavafx/scene/control/TextFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TextFormatter",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TextInputControl;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TextInputControl;)V
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TextInputControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$5;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 293
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/TextInputControl$5;->oldFormatter:Ljavafx/scene/control/TextFormatter;

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TextInputControl$5;Ljavafx/scene/control/TextFormatter;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TextInputControl$5;->lambda$invalidated$164(Ljavafx/scene/control/TextFormatter;)V

    return-void
.end method

.method private synthetic lambda$invalidated$164(Ljavafx/scene/control/TextFormatter;)V
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$5;
    move-object v1, p1

    .local v1, "f":Ljavafx/scene/control/TextFormatter;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextInputControl$5;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/TextInputControl;->access$300(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextFormatter;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$5;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$5;
    const-string v1, "textFormatter"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$5;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl$5;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextFormatter;

    move-object v1, v4

    .line 309
    .local v1, "formatter":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<*>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 311
    move-object v4, v1

    move-object v5, v0

    :try_start_0
    invoke-static {v5}, Ljavafx/scene/control/TextInputControl$5$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TextInputControl$5;)Ljava/util/function/Consumer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextFormatter;->bindToControl(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .line 319
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$5;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$5;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/TextInputControl$5;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextFormatter;

    invoke-static {v4, v5}, Ljavafx/scene/control/TextInputControl;->access$300(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/control/TextFormatter;)V

    .line 324
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$5;->oldFormatter:Ljavafx/scene/control/TextFormatter;

    if-eqz v4, :cond_1

    .line 325
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TextInputControl$5;->oldFormatter:Ljavafx/scene/control/TextFormatter;

    invoke-virtual {v4}, Ljavafx/scene/control/TextFormatter;->unbindFromControl()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TextInputControl$5;->oldFormatter:Ljavafx/scene/control/TextFormatter;

    .line 329
    .line 330
    return-void

    .line 312
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 313
    .local v2, "e":Ljava/lang/IllegalStateException;
    move-object v4, v0

    :try_start_2
    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl$5;->isBound()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextInputControl$5;->unbind()V

    .line 316
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextInputControl$5;->set(Ljava/lang/Object;)V

    .line 317
    move-object v4, v2

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TextInputControl$5;->oldFormatter:Ljavafx/scene/control/TextFormatter;

    move-object v4, v3

    throw v4
.end method
