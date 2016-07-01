.class Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;
.super Ljava/lang/Object;
.source "VetoableListDecorator.java"

# interfaces
.implements Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModCountAccessorImplSub"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;)V
    .locals 4

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;->this$1:Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;Lcom/sun/javafx/collections/VetoableListDecorator$1;)V
    .locals 5

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/collections/VetoableListDecorator$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;-><init>(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;)V

    return-void
.end method


# virtual methods
.method public decrementAndGet()I
    .locals 3

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;->this$1:Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;->this$1:Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    invoke-static {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->access$300(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;)Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->decrementAndGet()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->access$202(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    return v0
.end method

.method public get()I
    .locals 2

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;->this$1:Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    invoke-static {v1}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->access$200(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    return v0
.end method

.method public incrementAndGet()I
    .locals 3

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;->this$1:Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;->this$1:Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;

    invoke-static {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->access$300(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;)Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;->incrementAndGet()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;->access$202(Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator;I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$VetoableSubListDecorator$ModCountAccessorImplSub;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.VetoableSubListDecorator.ModCountAccessorImplSub;"
    return v0
.end method
