.class Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;
.super Ljava/lang/Object;
.source "VetoableListDecorator.java"

# interfaces
.implements Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/VetoableListDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModCountAccessorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/collections/VetoableListDecorator;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/collections/VetoableListDecorator;)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.ModCountAccessorImpl;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 790
    return-void
.end method


# virtual methods
.method public decrementAndGet()I
    .locals 2

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.ModCountAccessorImpl;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    invoke-static {v1}, Lcom/sun/javafx/collections/VetoableListDecorator;->access$406(Lcom/sun/javafx/collections/VetoableListDecorator;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.ModCountAccessorImpl;"
    return v0
.end method

.method public get()I
    .locals 2

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.ModCountAccessorImpl;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    invoke-static {v1}, Lcom/sun/javafx/collections/VetoableListDecorator;->access$400(Lcom/sun/javafx/collections/VetoableListDecorator;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.ModCountAccessorImpl;"
    return v0
.end method

.method public incrementAndGet()I
    .locals 2

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.ModCountAccessorImpl;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;->this$0:Lcom/sun/javafx/collections/VetoableListDecorator;

    invoke-static {v1}, Lcom/sun/javafx/collections/VetoableListDecorator;->access$404(Lcom/sun/javafx/collections/VetoableListDecorator;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/VetoableListDecorator$ModCountAccessorImpl;, "Lcom/sun/javafx/collections/VetoableListDecorator<TE;>.ModCountAccessorImpl;"
    return v0
.end method
