<template>
  <dl>
    <dt>ID</dt>
    <dd>{{ employee.id }}</dd>
    <dt>Name</dt>
    <dd>{{ employee.name }}</dd>
    <dt>Gender</dt>
    <dd>{{ employee.gender }}</dd>
    <dt>Birth</dt>
    <dd>{{ employee.birth }}</dd>
    <dt>Payment</dt>
    <dd>{{ employee.payment }}</dd>
  </dl>
</template>
<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      employee: {}
    }
  },
  mounted () {
    axios
      .get(`/api/v1/employees/${this.$route.params.id}.json`)
      .then(response => (this.employee = response.data))
  }
}

</script>

<style scoped>
</style>