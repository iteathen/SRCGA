.class Ljavafx/animation/Animation$AnimationReadOnlyProperty;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationReadOnlyProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/animation/Animation;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->this$0:Ljavafx/animation/Animation;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    .line 222
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->name:Ljava/lang/String;

    .line 223
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->value:Ljava/lang/Object;

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;Ljavafx/animation/Animation$1;)V
    .locals 9

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/Animation;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/String;
    move-object v3, p3

    .local v3, "x2":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "x3":Ljavafx/animation/Animation$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;-><init>(Ljavafx/animation/Animation;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Ljavafx/animation/Animation$AnimationReadOnlyProperty;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/Animation$AnimationReadOnlyProperty;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private set(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->value:Ljava/lang/Object;

    .line 243
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->fireValueChangedEvent()V

    .line 244
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->this$0:Ljavafx/animation/Animation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/Animation$AnimationReadOnlyProperty;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/Animation$AnimationReadOnlyProperty;, "Ljavafx/animation/Animation$AnimationReadOnlyProperty<TT;>;"
    return-object v0
.end method
