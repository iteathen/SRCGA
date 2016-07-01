.class Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "ReadOnlyDoubleProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/ReadOnlyDoubleProperty;->asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Ljavafx/beans/property/ReadOnlyDoubleProperty;

.field private valid:Z


# direct methods
.method constructor <init>(Ljavafx/beans/property/ReadOnlyDoubleProperty;)V
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    .line 139
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->valid:Z

    .line 140
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty$2$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/ReadOnlyDoubleProperty$2;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->listener:Ljavafx/beans/InvalidationListener;

    .line 148
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 149
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/ReadOnlyDoubleProperty$2;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->lambda$$14(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$$14(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->valid:Z

    if-eqz v2, :cond_0

    .line 142
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->valid:Z

    .line 143
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->fireValueChangedEvent()V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Double;
    .locals 3

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->valid:Z

    .line 164
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->get()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyDoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyDoubleProperty$2;
    return-object v0
.end method
