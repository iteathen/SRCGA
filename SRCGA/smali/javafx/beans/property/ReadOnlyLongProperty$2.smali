.class Ljavafx/beans/property/ReadOnlyLongProperty$2;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "ReadOnlyLongProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/ReadOnlyLongProperty;->asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Ljavafx/beans/InvalidationListener;

.field final synthetic this$0:Ljavafx/beans/property/ReadOnlyLongProperty;

.field private valid:Z


# direct methods
.method constructor <init>(Ljavafx/beans/property/ReadOnlyLongProperty;)V
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/property/ReadOnlyLongProperty;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyLongProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyLongProperty;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    .line 138
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/ReadOnlyLongProperty$2;->valid:Z

    .line 139
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/beans/property/ReadOnlyLongProperty$2$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/ReadOnlyLongProperty$2;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyLongProperty$2;->listener:Ljavafx/beans/InvalidationListener;

    .line 147
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyLongProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyLongProperty;

    new-instance v3, Ljavafx/beans/WeakInvalidationListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/property/ReadOnlyLongProperty$2;->listener:Ljavafx/beans/InvalidationListener;

    invoke-direct {v4, v5}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyLongProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 148
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/ReadOnlyLongProperty$2;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyLongProperty$2;->lambda$$10(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$$10(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/property/ReadOnlyLongProperty$2;->valid:Z

    if-eqz v2, :cond_0

    .line 141
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/beans/property/ReadOnlyLongProperty$2;->valid:Z

    .line 142
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyLongProperty$2;->fireValueChangedEvent()V

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/ReadOnlyLongProperty$2;->valid:Z

    .line 163
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyLongProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyLongProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyLongProperty;->getValue()Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyLongProperty$2;->get()Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyLongProperty$2;->this$0:Ljavafx/beans/property/ReadOnlyLongProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyLongProperty;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyLongProperty$2;
    return-object v0
.end method
